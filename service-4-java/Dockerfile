FROM openjdk:11-jdk-slim as builder
COPY / /tmp
RUN cd /tmp && ./gradlew clean build
FROM openjdk:11-jdk-slim
COPY --from=builder /tmp/build/libs/eminem-0.0.1-SNAPSHOT /app.jar
ENTRYPOINT exec java -jar /app.jar
