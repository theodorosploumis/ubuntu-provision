# Install required software
sudo apt-get install python-setuptools aptitude git curl python-dev libxml2-dev libxslt-dev

# Install Python pip
sudo easy_install pip

# Clone the repository
cd ~
git clone https://github.com/TheodorosPloumis/ubuntu-provision.git ~/ubuntu-provision
cd ~/ubuntu-provision

# Change permissions and owner of the folder
#sudo chown -R $USER:$USER ~/ubuntu-provision
#sudo chmod 777 -R ~/ubuntu-provision

# Install Ansible requirements
sudo pip install -r requirements.txt

# Run Ansible...
ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules

exit 0
