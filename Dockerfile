
FROM openjdk:21-jdk


RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /app



CMD ["bash"]
