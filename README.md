# Qt Wasm project template, with deploy to Github Pages

This is a template repository for C++/Qt projects that can be deployed to Github Pages.

[![Build and deploy to GitHub Pages](https://github.com/SavenkovIgor/QtWasmTemplate/actions/workflows/BuildDeploy.yml/badge.svg)](https://github.com/SavenkovIgor/QtWasmTemplate/actions/workflows/BuildDeploy.yml)

Deploy example here: [QtWasmTemplate](https://savenkovigor.github.io/QtWasmTemplate/). :warning: Wait ~20 seconds while it loads the Qt libraries.

## Project structure
```bash
├── .github/workflows/BuildDeploy.yml # Github Actions workflow for build and deploy to Github Pages
├── CMakeLists.txt                    # Cmake file
├── CMakePresets.json                 # Cmake presets file
├── main.cpp                          # Main cpp file, with qml engine initialization
├── main.qml                          # Qml file with hello world
└── project.py                        # Main project script
```

## Getting Started

To use this template, click the "Use this template" button at the top of the repository.

Also you need to activate Github Pages for your repository with Github actions way of deployment.

## Dependencies
- Cmake/Ninja
- Qt 6.5.1
- aqtinstall (script for qt installation. optional)

## :hammer_and_wrench: Build
To build this project you can use a script
```bash
./project.py --install --build
```

or you can run commands from script manually:

```bash
# Install dependencies
pip install aqtinstall

# Install Qt [optional if you already have Qt installed]
aqt install-qt linux desktop 6.4.2 gcc_64 --outputdir ./Qt
aqt install-qt linux desktop 6.4.2 wasm_32 --outputdir ./Qt

# Configure cmake
cmake --preset=wasm_release -Wno-dev

# Build project
cmake --build --preset=wasm_release

# As result you will get folder, ready to deploy at
# ./build/wasm_release/deploy
```

## Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request.
