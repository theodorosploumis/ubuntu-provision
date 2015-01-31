sudo apt-get install python-setuptools

sudo easy_install pip

sudo apt-get install aptitude
sudo apt-get install git
sudo apt-get install python-dev libxml2-dev libxslt-dev

cd ~
mkdir -p setup
cd setup
git clone https://github.com/TheodorosPloumis/ubuntu-provision.git
cd ubuntu-provision

sudo pip install -r requirements.txt

echo -e "Enter your username and press [ENTER]" && read PROVISIONING_USER
sudo sed -i "s/^username: .*/username: $PROVISIONING_USER/" roles/common/vars/main.yml

echo -e "Enter your github username and press [ENTER]" && read PROVISIONING_GITHUB_USERNAME
sudo sed -i "s/^github_username: .*/github_username: $PROVISIONING_GITHUB_USERNAME/" roles/common/vars/main.yml

sudo sed -i "s/^uname_r: .*/uname_r: `uname -r`/" roles/common/vars/main.yml

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

source ~/.bashrc
exit 0
