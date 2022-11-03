#!/bin/bash 
#Welcome to bbti 

#messages
echo "Welcome to bbti"
echo "This tool will install common tools that are used for security testing" 
echo "Starting updates" 

#updating before installation
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get dist-upgrade 

#installing dependancies 
echo "Installting dependancies"
sudo apt install golang-go
sudo apt install software-properties-common
sudo apt install python3.8
sudo apt install rustc

echo "Finished installing dependacies"
echo "Starting tool installation" 

#installing tools 
go install -v github.com/OWASP/Amass/v3/...@master
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
go install    github.com/projectdiscovery/asnmap/cmd/asnmap@latest
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install    github.com/tomnomnom/assetfinder@latest
go install    github.com/tomnomnom/waybackurls@latest
go install    github.com/tomnomnom/meg@latest


