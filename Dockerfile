
FROM openjdk:21-jdk
WORKDIR /app
COPY . /app
RUN javac untitled1/src/tp1.java
CMD ["java", "-cp", "untitled1/src", "tp1"]
