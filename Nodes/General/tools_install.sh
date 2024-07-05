#!/bin/bash

# Update the package list and install necessary utilities and development tools
# Оновлення списку пакетів та встановлення необхідних утиліт та інструментів розробки
sudo apt update && sudo apt install -y \
    curl \
    htop \
    mc \
    wget \
    make \
    cmake \
    unzip \
    jq

# curl: Tool to transfer data from URLs
# curl: Інструмент для передачі даних за URL

# htop: Interactive process viewer
# htop: Інтерактивний переглядач процесів

# mc: Midnight Commander file manager
# mc: Файловий менеджер Midnight Commander

# wget: Utility to download files from the internet
# wget: Утиліта для завантаження файлів з інтернету

# make: Utility for automation of compilation
# make: Утиліта для автоматизації компіляції

# cmake: Build system
# cmake: Система збірки

# unzip: Utility to unzip zip archives
# unzip: Утиліта для розпаковки zip-архівів

# jq: Tool for processing JSON data
# jq: Інструмент для обробки даних JSON
