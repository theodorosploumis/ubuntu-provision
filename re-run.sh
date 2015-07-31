# Run only Ansible without the requirements etc

cd ~/ubuntu-provision

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass --module-path ./ansible_modules
exit 0
