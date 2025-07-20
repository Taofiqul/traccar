FROM openjdk:17-jdk-slim

WORKDIR /opt/traccar

RUN apt update && apt install -y wget unzip

RUN wget https://github.com/traccar/traccar/releases/latest/download/traccar-other.zip && \
    unzip traccar-other.zip && rm traccar-other.zip

EXPOSE 8082

CMD ["./traccar.run"]
