FROM eclipse-temurin:21-jre-alpine AS runtime
ARG JAR_FILE=build/libs/*.jar
WORKDIR /app
RUN addgroup -S app && adduser -S app -G app
COPY ${JAR_FILE} /app/app.jar
ENV JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0"
EXPOSE 8080
USER app
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
