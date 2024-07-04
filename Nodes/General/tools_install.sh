#!/bin/bash

# Update the package list and install necessary utilities and development tools
# Оновлення списку пакетів та встановлення необхідних утиліт та інструментів розробки
sudo apt update && sudo apt install -y \
    curl \  # Tool to transfer data from URLs
    git \  # Version control system Git
    htop \  # Interactive process viewer
    mc \  # Midnight Commander file manager
    wget \  # Utility to download files from the internet
    make \  # Utility for automation of compilation
    cmake \  # Build system
    clang \  # LLVM compiler
    netcat \  # Universal network tool
    net-tools \  # Networking utilities
    tmux \  # Terminal multiplexer
    pkg-config \  # Tool for configuring compilation
    libssl-dev \  # OpenSSL library (header files)
    unzip \  # Utility to unzip zip archives
    jq \  # Tool for processing JSON data
    build-essential \  # Basic tools required for compilation
    ncdu \  # Disk analyzer similar to du