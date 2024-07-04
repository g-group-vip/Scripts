# Перевірка, чи встановлений Docker
# Check if Docker is installed
if command -v docker &> /dev/null; then
    echo "✅ Docker вже встановлено."
    echo "✅ Docker is already installed."
    return 0
fi

# Встановлення за допомогою скрипту Docker
# Install using Docker's convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
if [[ $? -ne 0 ]]; then
    echo "❌ Не вдалося встановити Docker через офіційний скрипт. Перехід до встановлення docker-compose."
    echo "❌ Failed to install Docker via official script. Falling back to docker-compose."
    curl -fsSL "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi
rm get-docker.sh

# Додавання поточного користувача до групи docker
# Add current user to the docker group
sudo usermod -aG docker $(whoami)

echo "✅ Docker встановлено."  
echo "✅ Docker is installed."
return 0
