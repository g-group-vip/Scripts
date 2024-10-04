#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/welcome.sh | bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the required software!"
echo "Встановлення необхідного програмного забезпечення!"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl -s https://raw.githubusercontent.com/g-group-vip/Scripts/main/Nodes/General/tools_install.sh | bash

sudo apt-get install git -y
sudo apt install unzip
sudo apt install nano

sudo apt install software-properties-common -y
echo "Під час встановлення потрібно буде натиснути Enter!"
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update
sudo apt install python3.11 -y

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Version:"
python3.11 --version
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


sudo apt install python3-pip python3-venv curl -y
curl -sSL https://install.python-poetry.org | python3 -
export PATH="$HOME/.local/bin:$PATH"
source ~/.bashrc

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Version:"
poetry --version
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


curl -fsSL https://fnm.vercel.app/install | bash

source ~/.bashrc
fnm use --install-if-missing 22

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Version:"
node -v && npm -v
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


apt-get install nodejs -y
npm install -g yarn

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Version:"
yarn --version
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Installing of the required software completed!"
echo "На цоьму етапі встановлення необхідного програмного забезпечення завершено!"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "Installed versions:"
echo "Встановлені версії:"

echo ""
echo "Python: - Expected to see Python 3.11.10 version"
echo "Python: - очікується версія Python 3.11.10"
echo ""

python3.11 --version

echo ""
echo "Poetry: - Expected to see any versio:"
echo "Poetry: - Очікується будь-яка версія:"
echo ""

poetry --version

echo ""
echo "NodeJs and Npm:  - Expected versions: v22.9.0 and 10.8.3 :"
echo "NodeJs і Npm: - Очікувані версії: v22.9.0 і 10.8.3 :"
echo ""

node -v && npm -v

echo ""
echo "Yarn: - Expected to see any version:"
echo "Yarn: - Очікується будь-яка версія:"
echo ""

yarn --version

echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""

echo "If you will have any issues later on with Poetry,please do execute next commands :"
echo "Якщо пізніше у вас виникнуть проблеми з Poetry, будь ласка, виконайте наступні команди:"

echo "sudo apt install python3-pip python3-venv curl -y"
echo "curl -sSL https://install.python-poetry.org | python3 -"
echo "export PATH=\"\$HOME/.local/bin:\$PATH\""
echo "source ~/.bashrc"
echo "poetry --version"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""