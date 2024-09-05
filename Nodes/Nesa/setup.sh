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
echo "Installing of the Nesa node!"
echo "Встановлення ноди Nesa!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

bash <(curl -s https://raw.githubusercontent.com/nesaorg/bootstrap/master/bootstrap.sh)


echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Congratulations,that is it! The Nesa node is launched and runnning successfully!"
echo "Please monitor it's state by this link:"
echo "Вітаємо,на цьому все!Nesa нода успішно запущена та працює!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "As well you can check the actual logs with help of next command:"
echo "Також актуальні логи можна перевірити наступною командою:"
echo "docker logs -f --tail 250 orchestrator"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/thanks.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"