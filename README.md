# template-C-Project

Dies ist ein Template für C++-Projekte mit CMake. Es bietet eine grundlegende Struktur, um schnell mit neuen C++-Projekten zu starten.

## Projektstruktur

```
template-C-Project/
├── CMakeLists.txt          # Haupt-CMake-Konfigurationsdatei
├── src/                    # Quellcode-Dateien (.cpp)
│   └── main.cpp
├── include/                # Header-Dateien (.h, .hpp)
│   └── example.h
├── tests/                  # Unit-Tests
│   ├── CMakeLists.txt
│   └── test_example.cpp
├── cmake/                  # CMake-Module und Skripte
│   └── README.md
└── README.md               # Diese Datei
```

## Voraussetzungen

- **C++ Compiler**: GCC, Clang oder MSVC (Visual Studio)
- **CMake**: Version 3.16 oder höher
- **Visual Studio Code** mit folgenden Erweiterungen:
  - C/C++ (von Microsoft)
  - CMake Tools (von Microsoft)
  - Optional: C++ TestMate für Tests

## Installation der Erweiterungen in Visual Studio Code

1. Öffnen Sie Visual Studio Code.
2. Gehen Sie zu den Erweiterungen (Extensions) über das Seitenmenü oder `Ctrl+Shift+X`.
3. Suchen Sie nach "C/C++" und installieren Sie die Erweiterung von Microsoft.
4. Suchen Sie nach "CMake Tools" und installieren Sie sie ebenfalls.
5. Optional: Suchen Sie nach "C++ TestMate" für bessere Testunterstützung.

## Verwendung des Templates

1. **Klonen oder Kopieren**: Kopieren Sie dieses Template in ein neues Verzeichnis für Ihr Projekt.

2. **Projekt konfigurieren**:
   - Bearbeiten Sie `CMakeLists.txt`, um den Projektnamen, Version und andere Einstellungen anzupassen.
   - Fügen Sie Ihre Quellcode-Dateien in `src/` hinzu.
   - Fügen Sie Header-Dateien in `include/` hinzu.
   - Passen Sie die Tests in `tests/` an.

3. **Build und Ausführung**:
   - Öffnen Sie das Projekt in Visual Studio Code.
   - Verwenden Sie die CMake Tools Erweiterung, um das Projekt zu konfigurieren und zu bauen.
   - Drücken Sie `F7` oder verwenden Sie die Befehlspalette (`Ctrl+Shift+P`) und suchen Sie nach "CMake: Build".
   - **Ausführung im Terminal**: Navigieren Sie zum `build/`-Verzeichnis und führen Sie `./template-C-Project` aus.
   - **Ausführung in VS Code**: Verwenden Sie `F5` zum Debuggen (die launch.json ist konfiguriert) oder die Befehlspalette für "CMake: Run" (stellen Sie sicher, dass CMake Tools konfiguriert ist und ein Kit ausgewählt wurde: Befehlspalette → "CMake: Select a Kit" → Wähle "Clang (macOS)").
   - Falls Compiler-Probleme auftreten (z.B. auf macOS), setzen Sie den Compiler manuell: Öffnen Sie die Befehlspalette und wählen Sie "CMake: Select a Kit" oder konfigurieren Sie mit `cmake -DCMAKE_CXX_COMPILER=clang++ ..` im Terminal.

4. **Tests ausführen**:
   - Nach dem Build können Sie Tests mit "CMake: Run Tests" ausführen.
   - Oder verwenden Sie die Befehlspalette: "CMake: Run Tests".

## Anpassungen

- **Abhängigkeiten hinzufügen**: Fügen Sie `find_package` oder `FetchContent` in `CMakeLists.txt` hinzu.
- **Zusätzliche Executables/Libraries**: Verwenden Sie `add_library` oder weitere `add_executable`.
- **Compiler-Flags**: Passen Sie `CMAKE_CXX_FLAGS` an.

## Beispiel

Das Template enthält ein einfaches Beispiel:
- `src/main.cpp`: Hauptfunktion, die eine Beispiel-Funktion aufruft.
- `include/example.h`: Beispiel-Header mit einer Funktion.
- `tests/test_example.cpp`: Platzhalter für Unit-Tests mit Google Test.

## Docker-Unterstützung

Das Template enthält ein Dockerfile, um das Projekt in einem Docker-Container zu bauen und auszuführen.

### Voraussetzungen für Docker
- Docker installiert und laufend (starte Docker Desktop oder den Daemon).

### Verwendung mit Docker
1. **Image bauen**:
   ```
   docker build -t template-c-project .
   ```

2. **Container ausführen**:
   ```
   docker run template-c-project
   ```

   Dies führt das gebaute Executable aus und zeigt die Ausgabe.

3. **Interaktiv arbeiten** (z.B. für Debugging):
   ```
   docker run -it template-c-project /bin/bash
   ```
   Dann kannst du im Container navigieren und manuell bauen/testen.

### Anpassungen
- Passe das Dockerfile an, wenn du andere Abhängigkeiten brauchst (z.B. zusätzliche Libraries).
- Für persistente Builds kannst du Volumes mounten: `docker run -v $(pwd)/build:/app/build template-c-project`.

## Plattform-Kompatibilität

Das Template ist für Linux, macOS und Windows kompatibel. Es verwendet CMake, das plattformübergreifend ist, und unterstützt gängige Compiler (GCC, Clang, MSVC).

### Spezifische Hinweise:
- **macOS**: Verwende das Kit "Clang (macOS)" und die Debug-Konfiguration "Debug template-C-Project (macOS)".
- **Linux**: Verwende das Kit "GCC (Linux)" und die Debug-Konfiguration "Debug template-C-Project (Linux/Windows)".
- **Windows**: Verwende das Kit "MSVC (Windows)" und die Debug-Konfiguration "Debug template-C-Project (Linux/Windows)". Stelle sicher, dass Visual Studio oder Build Tools installiert sind.
- **Docker**: Das Dockerfile ist für Linux-Container optimiert (Ubuntu). Für Windows-Container passe es an (z.B. `FROM mcr.microsoft.com/windows/servercore:ltsc2022`).

Wähle das passende Kit in VS Code: Befehlspalette → "CMake: Select a Kit".

## Lizenz

Dieses Template ist unter der MIT-Lizenz veröffentlicht. Passe es deinen Bedürfnissen an.