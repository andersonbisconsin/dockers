FROM telegraf:latest

# Create a directory for the Telegraf config file
RUN mkdir -p /etc/telegraf

# Copy the config file from a volume
COPY telegraf.conf /etc/telegraf/telegraf.conf

# Start Telegraf
CMD ["telegraf", "--config", "/etc/telegraf/telegraf.conf"]
