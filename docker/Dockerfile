FROM eclipse-temurin:17-jdk

ENV DEBIAN_FRONTEND=noninteractive

# Install unzip & wget
RUN apt-get update && apt-get install -y unzip wget && apt-get clean

# Create install directory
RUN mkdir -p /opt/traccar

# Download and extract Traccar "other" version (for Linux)
RUN wget https://github.com/traccar/traccar/releases/latest/download/traccar-other.zip -O /tmp/traccar.zip && \
    unzip -qo /tmp/traccar.zip -d /opt/traccar && \
    rm /tmp/traccar.zip

# Expose default Traccar port
EXPOSE 8082

# Run Traccar
CMD ["/opt/traccar/bin/traccar", "start"]
