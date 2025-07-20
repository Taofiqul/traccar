FROM openjdk:17-jdk-slim

WORKDIR /opt/traccar

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/traccar/traccar/releases/latest/download/traccar-other.zip -O /tmp/traccar.zip && \
    unzip -qo /tmp/traccar.zip -d /opt/traccar && \
    rm /tmp/traccar.zip

EXPOSE 8082

CMD ["./traccar.run"]
