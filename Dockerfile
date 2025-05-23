FROM debian:bullseye
RUN apt-get update && apt-get install -y ca-certificates
COPY mqtt_blackbox_exporter /bin/mqtt_blackbox_exporter
ENTRYPOINT ["/bin/mqtt_blackbox_exporter"]
CMD ["-config.file", "config.yaml", "-web.listen-address", "0.0.0.0:9214"]