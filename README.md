# pyChilasPolarisGUI

This repository contains the Python code for the Graphical User Interface (GUI) for control of the Chilas POLARIS lasers.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Older Versions](#older-versions)
- [Versions Hierarchy](#versions-hierarchy)
- [Deployment](#deployment)

## Prerequisites

* Python 3.6.8

## Installation

* `pip install -r requirements.txt`

## Usage

* `python main.py`

## Older Versions

Check the other branches.

## Versions Hierarchy
```
Chilas POLARIS
```

## Deployment
Example code to make one file executable.
```
pyinstaller --name "Chilas POLARIS" --windowed --onefile --add-data "background.png;." --add-data "chilas_logo.png;." --add-data "Control.qml;." --icon "icon.ico" --add-data "icon.ico;." --add-data "main.qml;." --add-data "PageCntrlPnl.qml;." --add-data "polaris_logo.png;." --add-data "PopupInfo.qml;." --add-data "Splash.qml;." --add-data "LICENSE;." main.py
```
