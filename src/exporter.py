#!/usr/bin/env python3

import os
import time
import sys

import pymysql
import prometheus_client as prom

from pymysql.cursors import DictCursor
from snapshot import Snapshot

def getenv(param, default=None):
    value = os.getenv(param, default)
    if value:
        return value
    else:
        print("ERROR: Missing environment variable: " + param)
        sys.exit(1)

def init_database():
    host = getenv('DB_HOST')
    port = getenv('DB_PORT', 3306)
    database = getenv('DB_DATABASE')
    username = getenv('DB_USERNAME')
    password = getenv('DB_PASSWORD')

    print(f"Connecting to {database} at {username}@{host}:{port}")
    conn = pymysql.connect(host=host, port=port,
        user=username, passwd=password, db=database)

    return conn

def init_http():
    port=int(getenv('EXPORTER_PORT', 8080))
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

def to_ms(interval):
    return int(interval * 1000)

def read_position(conn):
    cursor = conn.cursor(DictCursor)
    cursor.execute("SELECT max(servertime) as servertime, latitude, deviceid \
                    FROM tc_positions GROUP BY deviceid")

    data = cursor.fetchall()

    cursor.close()
    return data

def update_snapshot(snapshot, data, devices):
    print(data)

    for row in data:
        device = devices[row['deviceid']]
        snapshot.latitude.labels(device['name'], device['uniqueid']).set(row['latitude'])

if __name__ == "__main__":
    conn = init_database()
    devices = read_devices(conn)

    print("Found devices: ")
    print(devices)

    interval = int(getenv('INTERVAL', 5))
    print(f"INFO: Setting interval to {to_ms(interval)}ms")

    init_http()

    snapshot = Snapshot()

    try:
        while True:
            start = time.time()

            data = read_position(conn)
            update_snapshot(snapshot, data, devices)

            elapsed = time.time() - start
            sleep = interval - elapsed
            if sleep >= 0:
                print(f"DEBUG: Execution finished in {to_ms(elapsed)}ms, sleeping for {to_ms(sleep)}ms")
                time.sleep(sleep)
            else:
                print("WARN: Execution takes longer than the update interval!")
                print(f"WARN: execution={to_ms(elapsed)}ms interval={to_ms(interval)}ms")
    except KeyboardInterrupt:
        print()
        print("Aborting execution")

    conn.close()
