wget http://localhost/Rhce/inventory    > /dev/null 2>&1
wget http://localhost/Rhce/ansible.cfg  > /dev/null 2>&1
wget http://localhost/Rhce/admin.yml       > /dev/null 2>&1
ansible-playbook admin.yml      > /dev/null 2>&1
