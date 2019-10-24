#!/usr/bin/env python3

import prometheus_client as prom

class Snapshot:
    def __init__(self):
        self.latitude = prom.Gauge('traccar_latitude', 'Device latitude', ['name', 'uniqueid'])
        self.longitude = prom.Gauge('traccar_longitude', 'Device longitude', ['name', 'uniqueid'])
        self.altitude = prom.Gauge('traccar_altitude', 'Device altitude', ['name', 'uniqueid'])
        self.speed = prom.Gauge('traccar_speed', 'Device speed', ['name', 'uniqueid'])
        self.course = prom.Gauge('traccar_course', 'Device course', ['name', 'uniqueid'])
        self.attributes = prom.Gauge('traccar_attributes', 'Device attributes', ['name', 'uniqueid', 'attribute'])
        pass
