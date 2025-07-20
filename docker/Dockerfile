FROM openjdk:17-jdk-slim

WORKDIR /opt/traccar

RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/traccar/traccar/releases/download/v6.8.1/traccar-other-6.8.1.zip -O /tmp/traccar.zip && \
    unzip -qo /tmp/traccar.zip -d /opt/traccar && \
    rm /tmp/traccar.zip

EXPOSE 8082

CMD ["./traccar.run"]
