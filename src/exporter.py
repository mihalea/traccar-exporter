#!/usr/bin/env python3

import os
import time
import sys
import json
import re
import logging

import pymysql
import prometheus_client as prom

from pymysql.cursors import DictCursor
from snapshot import Snapshot

def getenv(param, default=None):
    value = os.getenv(param, default)
    if value:
        return value
    else:
        logging.critical(f"Missing environment variable: {param}")
        sys.exit(1)

def init_database():
    host = getenv('DB_HOST')
    port = getenv('DB_PORT', 3306)
    database = getenv('DB_DATABASE')
    username = getenv('DB_USERNAME')
    password = getenv('DB_PASSWORD')

    logging.info(f"Connecting to {database} at {username}@{host}:{port}")
    conn = pymysql.connect(host=host, port=port,
        user=username, passwd=password, db=database, autocommit=True)

    return conn

def init_http():
    port=int(getenv('EXPORTER_PORT', 8080))
    logging.info(f"Starting http handler on port {port}")
    prom.start_http_server(port)

def read_devices(conn):
    cursor = conn.cursor()
    cursor.execute('SELECT id,name,uniqueid FROM tc_devices')

    devices = {}
    for row in cursor:
        devices[row[0]] = {
            'name': row[1],
            'uniqueid': row[2]
            }

    cursor.close()
    return devices

def read_attributes(conn):
    cursor = conn.cursor()
    cursor.execute('SELECT attribute, expression FROM tc_attributes')

    attributes = {}
    for row in cursor:
        if re.match(r'io[0-9]+', row[1]):
            attributes[row[1]] = row[0]

    cursor.close()
    return attributes

def to_ms(interval):
    return int(interval * 1000)

def read_position(conn):
    cursor = conn.cursor(DictCursor)

    cursor.execute("SELECT deviceid, servertime, latitude, longitude, altitude, \
                    speed, course, attributes \
                    FROM tc_positions \
                    WHERE (servertime, deviceid) IN \
                    (SELECT max(servertime), deviceid FROM tc_positions\
                     GROUP BY deviceid)")
    data = cursor.fetchall()

    cursor.close()
    return data

def update_snapshot(snapshot, data, device_map, attribute_map):
    if len(data) > len(device_map):
        logging.error(f'Received more updates than devices available')

    for row in data:
        logging.debug(f'Processing data: \n{data}')

        device = device_map[row['deviceid']]

        snapshot.latitude \
            .labels(device['name'], device['uniqueid']) \
            .set(row['latitude'])

        snapshot.longitude \
            .labels(device['name'], device['uniqueid']) \
            .set(row['longitude'])

        snapshot.altitude \
            .labels(device['name'], device['uniqueid']) \
            .set(row['altitude'])

        snapshot.speed \
            .labels(device['name'], device['uniqueid']) \
            .set(row['speed'])

        snapshot.course \
        .labels(device['name'], device['uniqueid']) \
        .set(row['course'])

        attributes = json.loads(row['attributes'])
        for attr in attributes:
            key = attr
            if attr in attribute_map:
                key = attribute_map[attr]

            snapshot.attributes \
                .labels(device['name'], device['uniqueid'], key) \
                .set(attributes[attr])

if __name__ == "__main__":
    logging.basicConfig( \
        level=logging.DEBUG, \
        format='[%(levelname).4s] %(asctime)s: %(message)s' \
        )
    conn = init_database()

    interval = int(getenv('INTERVAL', 60))
    logging.info(f"Setting interval to {to_ms(interval)}ms")

    init_http()

    snapshot = Snapshot()

    try:
        while True:
            start = time.time()

            devices = read_devices(conn)
            attributes = read_attributes(conn)

            logging.debug(f"Found attributes: {attributes}")

            logging.debug(f"Found devices: {devices}")

            data = read_position(conn)
            update_snapshot(snapshot, data, devices, attributes)

            elapsed = time.time() - start
            sleep = interval - elapsed
            if sleep >= 0:
                logging.debug(f"Execution finished in {to_ms(elapsed)}ms, sleeping for {to_ms(sleep)}ms")
                time.sleep(sleep)
            else:
                logging.warn(f"Execution takes longer than the update interval! execution={to_ms(elapsed)}ms interval={to_ms(interval)}ms")
    except KeyboardInterrupt:
        logging.info("Aborting execution by user request")
    finally:
        conn.close()
