# Utilise l'image officielle OpenJDK 21
FROM openjdk:21-jdk

# Met à jour les paquets et installe git et bash
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Définit le répertoire de travail
WORKDIR /app

# Copie ton code source local dans le conteneur (optionnel si Jenkins clone)
# COPY untitled1 /app/untitled1

# Commande par défaut pour garder le conteneur actif
CMD ["bash"]
