# Run only Ansible without the requirements etc

cd ~/ubuntu-provision

sudo pip install -r requirements.txt

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass --module-path ./ansible_modules
exit 0
