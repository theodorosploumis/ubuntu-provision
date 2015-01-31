sudo apt-get install python-setuptools

# sudo easy_install pip
# OR
# sudo apt-get install python-pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

sudo apt-get install aptitude
sudo apt-get install git
sudo apt-get install python-dev libxml2-dev libxslt-dev

cd ~
mkdir -p setup
cd setup
git clone https://github.com/TheodorosPloumis/ubuntu-provision.git
cd ubuntu-provision

sudo pip install -r --allow-externals requirements.txt

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

exit 0
