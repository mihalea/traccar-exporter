#!/usr/bin/env python3

import prometheus_client as prom

class Snapshot:
    def __init__(self):
        self.latitude = prom.Gauge('traccar_latitude', 'Device latitude', ['name', 'uniqueid'])
        pass
