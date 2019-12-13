FROM openjdk:11-jdk-slim as builder
COPY / /tmp
RUN cd /tmp && chmod +x ./gradlew && ./gradlew clean build
FROM openjdk:11-jdk-slim
COPY --from=builder /tmp/build/libs/eminem-0.0.1-SNAPSHOT.jar /app.jar
ENTRYPOINT exec java -jar /app.jar
