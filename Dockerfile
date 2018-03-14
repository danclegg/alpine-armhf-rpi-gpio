FROM armhf/alpine:latest
LABEL Maintainer="Dan Clegg <doublegdesigns@gmail.com> " \
      Description="Lightweight Mosquitto MQTT server based on Alpine Linux."

# Install packages
#RUN apk update
#RUN apk upgrade
RUN apk --no-cache add mosquitto mosquitto-clients

# Expose MQTT port
EXPOSE 1883

ENV PATH /usr/sbin:$PATH

ENTRYPOINT ["/usr/sbin/mosquitto"]
