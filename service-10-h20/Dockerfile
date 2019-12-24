FROM openjdk:11-jdk-slim
WORKDIR /
RUN apt update && apt install wget unzip -y
RUN wget http://h2o-release.s3.amazonaws.com/h2o/rel-yu/1/h2o-3.28.0.1.zip && \
    unzip h2o-3.28.0.1.zip
WORKDIR /h2o-3.28.0.1
ENTRYPOINT exec java -jar h2o.jar 
