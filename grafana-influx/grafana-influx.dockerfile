FROM grafana/grafana:latest

# Install InfluxDB
RUN grafana-cli plugins install influxdb

# Create a directory for the Telegraf config file
RUN mkdir -p /etc/telegraf

# Start Grafana and configure InfluxDB as data source
CMD ["grafana-server", "--config", "/etc/grafana/grafana.ini", "--pidfile", "/var/run/grafana-server.pid", "cfg:default.paths.data=/var/lib/grafana", "cfg:default.paths.logs=/var/log/grafana", "cfg:default.paths.plugins=/var/lib/grafana/plugins"]