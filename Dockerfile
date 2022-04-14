# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD ./target/entry-0.0.1-SNAPSHOT.jar entry-ms.jar

EXPOSE 8080

CMD java -jar entry-ms.jar