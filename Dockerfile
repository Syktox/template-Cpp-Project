# Verwende ein Ubuntu-Image mit C++ und CMake
FROM ubuntu:22.04

# Setze Umgebungsvariablen
ENV DEBIAN_FRONTEND=noninteractive

# Installiere Abhängigkeiten
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

# Setze Arbeitsverzeichnis
WORKDIR /app

# Kopiere die Projektdateien
COPY . .

# Erstelle Build-Verzeichnis
RUN mkdir build

# Konfiguriere und baue das Projekt
RUN cd build && cmake .. && make

# Optional: Führe Tests aus (kommentiere aus, wenn nicht gewünscht)
RUN cd build && make test

# Setze den Einstiegspunkt (führe das Executable aus)
CMD ["./build/template-C-Project"]