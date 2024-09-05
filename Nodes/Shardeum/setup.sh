#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/welcome.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the required software!"
echo "Встановлення необхідного програмного забезпечення!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/docker_install.sh | bash 
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/tools_install.sh | bash 
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the Shardeum node!"
echo "Встановлення ноди Shardeum!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

curl -O https://raw.githubusercontent.com/shardeum/validator-dashboard/main/installer.sh && chmod +x installer.sh && ./installer.sh


echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Congratulations,that is it! The Shardeum node is launched and runnning successfully!"
echo "Please monitor it's state by this link:"
echo "Вітаємо,на цьому все!Shardeum нода успішно запущена та працює!"
echo "Будь ласка стежте за станом вашої ноди за цим посиланням:"
echo "http://$(hostname -I | awk '{print $1}'):8180"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "As well you can check the actual logs with help of next command:"
echo "Також актуальні логи можна перевірити наступною командою:"
echo "docker logs -f --tail=250 shardeum-dashboard"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/thanks.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"