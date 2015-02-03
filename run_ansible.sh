cd ~
mkdir -p setup
cd setup
git clone https://github.com/TheodorosPloumis/ubuntu-provision.git
cd ubuntu-provision

sudo pip install -r requirements.txt

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass --module-path ./ansible_modules
exit 0
