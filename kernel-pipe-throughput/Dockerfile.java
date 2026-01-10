FROM eclipse-temurin:21
WORKDIR /bench
COPY Bench.java .
RUN javac Bench.java
CMD ["java", "-Xmx2g", "-XX:+AlwaysPreTouch", "-XX:-RestrictContended", "Bench"]
