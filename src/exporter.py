#!/usr/bin/env python3

import os
import time
import sys

import pymysql
import prometheus_client as prom

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
    port=int(getenv('EXPORTER_PORT'))
    prom.start_http_server(port)

def read_devices(conn):
    cursor = conn.cursor()
    cursor.execute('SELECT id,name FROM tc_devices')

    devices = {}
    for row in cursor:
        devices[row[0]] = row[1]

    return devices

def to_ms(interval):
    return int(interval * 1000)

if __name__ == "__main__":
    conn = init_database()
    devices = read_devices(conn)

    print("Found devices: ")
    print(devices)

    interval = int(getenv('INTERVAL', 1))
    print(f"INFO: Setting interval to {to_ms(interval)}ms")

    try:
        while True:
            start = time.time()

            time.sleep(1)

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
