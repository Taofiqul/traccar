FROM alpine AS package
ARG VERSION
RUN wget https://github.com/traccar/traccar/releases/latest/download/traccar-other.zip -O /tmp/traccar.zip && \
    unzip -qo /tmp/traccar.zip -d /traccar && \
    rm /tmp/traccar.zip
FROM eclipse-temurin:21 AS jdk
RUN jlink --module-path $JAVA_HOME/jmods \
    --add-modules java.se,jdk.charsets,jdk.crypto.ec,jdk.unsupported \
    --strip-debug --no-header-files --no-man-pages --compress=2 --output /jre

FROM debian:12-slim
COPY --from=package /traccar /opt/traccar
COPY --from=jdk /jre /opt/traccar/jre
WORKDIR /opt/traccar
ENTRYPOINT ["/opt/traccar/jre/bin/java"]
CMD ["-jar", "tracker-server.jar", "conf/traccar.xml"]
