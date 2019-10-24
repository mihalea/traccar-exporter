# traccar-exporter

A Prometheus explorer publishing metrics from a Traccar MySQL database, such as longitude, altitude, attributes and many other.

### Installation

```
version: '3'

services:
  traccar-exporter:
    container_name: traccar-exporter
    image: mihalea/traccar-exporter:latest
    environment:
      - EXPORTER_PORT=8080 # Optional, default: 8080
      - INTERVAL=60 # Optional, default: 60
      - DB_PORT=3306 # Optional, default: 3306
      - DB_HOSTNAME=database
      - DB_USERNAME=username
      - DB_PASSWORD=password
    ports:
      - 8080:8080
```

### Development

The provided `docker-compose.yml` file makes use of a MariaDB database getting initialised with a minimal copy of a live Traccar database found in `database.sql`, which can be replaced as needed.

However for a faster development, a better alternative is to start just the database and use the provided `src/launch.sh` script which launches the exporter locally with the needed environment variables, skipping the Docker image build process.
