# Install required software
sudo apt-get install python-setuptools aptitude git curl python-dev libxml2-dev libxslt-dev

# sudo easy_install pip
# OR
# sudo apt-get install python-pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

cd ~
mkdir -p setup
cd setup
git clone https://github.com/TheodorosPloumis/ubuntu-provision.git
cd ubuntu-provision

sudo pip install -r requirements.txt

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

exit 0
