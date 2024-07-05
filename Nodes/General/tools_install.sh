#!/bin/bash

# Update and upgrade the package list
sudo apt-get update && sudo apt-get upgrade -y

# Install necessary utilities and development tools
sudo apt-get install -y \
    curl \
    htop \
    mc \
    wget \
    make \
    cmake \
    unzip \
    jq \
    git \
    tmux \
    net-tools \
    build-essential \
    ncdu \
    netcat-openbsd \
    clang \
    pkg-config \
    libssl-dev 

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

# git: Version control system
# git: Система контролю версій

# tmux: Terminal multiplexer
# tmux: Термінальний мультиплексор

# net-tools: Network configuration tools
# net-tools: Інструменти для конфігурації мережі

# build-essential: Basic development tools
# build-essential: Основні інструменти для розробки

# ncdu: Disk usage analyzer
# ncdu: Аналізатор використання диска

# netcat-openbsd: Networking utility for reading/writing network connections
# netcat-openbsd: Утиліта для роботи з мережевими з'єднаннями

# clang: C, C++, and Objective-C compiler
# clang: Компілятор для мов C, C++ та Objective-C

# pkg-config: Tool to manage compile and link flags for libraries
# pkg-config: Інструмент для керування прапорами компіляції та зв'язування для бібліотек

# libssl-dev: Development files for OpenSSL
# libssl-dev: Файли для розробки OpenSSL