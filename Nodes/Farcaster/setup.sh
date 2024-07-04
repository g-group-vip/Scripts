#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/welcome.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the required software!"
echo "Встановлення необхідного програмного забезпечення!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/tools_install.sh
https://github.com/g-group-vip/Scripts/blob/main/Nodes/General/docker_install.sh
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the Farcaster node!"
echo "Встановлення ноди Farcaster!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

# Ensure the ~/hubble directory exists
# Переконатися, що директорія ~/hubble існує
mkdir -p ~/hubble

# The download URL
# URL для завантаження
trigger_url="https://raw.githubusercontent.com/farcasterxyz/hub-monorepo/@latest/scripts/hubble.sh"

# Create a temporary file
# Створити тимчасовий файл
tmp_file=$(mktemp)

# Download the file using curl, save it to the temporary file
# Завантажити файл за допомогою curl, зберегти його у тимчасовий файл
curl -sS -o "$tmp_file" "$trigger_url" || { echo "It is not posible to get the resource from the url $trigger_url."; exit 1; }

# Move the downloaded file to ~/hubble/hubble.sh
# Перемістити завантажений файл у ~/hubble/hubble.sh
mv "$tmp_file" ~/hubble/hubble.sh

# Make hubble.sh executable
# Зробити hubble.sh виконуваним
chmod +x ~/hubble/hubble.sh

cd $HOME/hubble
bash hubble.sh "upgrade"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Congratulations,that is it! The Farcaster node is launched and runnning successfully!"
echo "Please monitor the state by this link:"
echo "Вітаємо,на цьому все!Фаркастер нода успішно запущена та працює!"
echo "Будь ласка стежте за станом вашої ноди за цим посиланням:"
echo "http://$(hostname -I | awk '{print $1}'):3000"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "As well you can check teh actual logs with help of next command:"
echo "Також актуальні логи можна перевірити наступною командою:"
echo "docker logs -f --tail=50 hubble-hubble-1"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/thanks.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"