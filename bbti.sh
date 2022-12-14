#!/bin/bash 
#Welcome to bbti 

#variables
Green='\033[0;32m'  

# introduction messages
echo \033[32m "Welcome to bbti" \033[0m 
echo "This tool will install common tools that are used for security testing" 
echo "Starting updates" 

#updating before installation
sudo apt-get update > /dev/null 2>&1
sudo apt-get upgrade > /dev/null 2>&1
sudo apt-get dist-upgrade /dev/null 2>&1

#installing dependancies 
echo "Installing dependancies this could take a minute"
sudo apt install golang-go > /dev/null 2>&1
sudo apt install software-properties-common 2>&1
sudo apt install python3.8 > /dev/null 2>&1
sudo apt install rustc > /dev/null 2>&1

#creating tools directory in "~/"
mkdir tools 

echo "Finished installing dependacies"
echo "Starting tool installation" 

#installing tools 

echo "Installing golang tools please wait"
go install -v github.com/OWASP/Amass/v3/...@master > /dev/null 2>&1
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest > /dev/null 2>&1 
go install    github.com/projectdiscovery/asnmap/cmd/asnmap@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest > /dev/null 2>&1
go install    github.com/tomnomnom/assetfinder@latest > /dev/null 2>&1
go install    github.com/tomnomnom/waybackurls@latest > /dev/null 2>&1
go install    github.com/tomnomnom/meg@latest > /dev/null 2>&1
go install    github.com/tomnomnom/gron@latest > /dev/null 2>&1
go install    github.com/lc/gau/v2/cmd/gau@latest > /dev/null 2>&1
echo "Finished installing golang tools" 

echo "Istalling other tools"
cd ~/tools 
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r 
sudo pip install -r requirements.txt > /dev/null 2>&1
sudo apt-get install python-requests > /dev/null 2>&1
sudo apt-get install python-argparse > /dev/null 2>&1
cd ..
git clone https://github.com/christophetd/censys-subdomain-finder.git > /dev/null 2>&1
cd censys-subdomain-finder > /dev/null 2>&1
python3 -m venv venv > /dev/null 2>&1
source venv/bin/activate > /dev/null 2>&1
pip install -r requirements.txt > /dev/null 2>&1
cd ..
git clone --recursive https://github.com/screetsec/Sudomy.git > /dev/null 2>&1
cd Sudomy > /dev/null 2>&1
python3 -m pip install -r requirements.txt > /dev/null 2>&1
apt-get install jq nmap phantomjs npm chromium parallel > /dev/null 2>&1
npm i -g wappalyzer wscat > /dev/null 2>&1
cd ..
git clone https://github.com/jonluca/Anubis > /dev/null 2>&1
cd Anubis > /dev/null 2>&1
pip3 install -r requirments.txt > /dev/null 2>&1
pip3 install .  > /dev/null 2>&1 
cd ..
git clone https://github.com/edoardottt/scilla.git
cd scilla
make linux





echo "Finished installing other tools" 


















