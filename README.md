#Don't forget to include hosts insite node_exporter.yml and prometheus.yml files.
#Also you must be configured /etc/ansible/ansible.cfg and /etc/ansible/hosts files.

#For instance ansible.cfg file should be:
#[defaults]
#host_key_checking = false
#inventory = /etc/ansible/hosts

#And hosts file: 
#[ubuntu] 
#192.168.0.0 ansible_ssh_user=user

#After that run command "ansible-playbook prometheus.yml" and "ansible-playbook node_exporter.yml"

#Also change source ip address into iptables configuration
