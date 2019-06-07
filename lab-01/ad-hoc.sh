

## Test Ad hoc commands and ssh command comparison

## Ahsan Lab1 ##
ssh node01 "hostname -f"
ansible node01   -a "hostname -f"

ssh node01 "mkdir /home/ec2-user/mytestdir"
ansible node1  -a "mkdir /home/ec2-user/testdirAnsible"
ansible node1 -m copy -a "src=inventory/ansible-nodes dest=/tmp/ansible-nodes"
ansible node:q!1 -m shell -a "cat /tmp/ansible-nodes" 
ansible node01 -b -m yum -a "name=httpd state=present"
ansible node01 -b -m yum -a "name=git state=present"
ansible node01 -b -m git -a "repo=https://github.com/becloudready/prometheus_monitoring.git dest=/tmp version=HEAD"

# Using Ansible modules in ad-hoc commands

ansible -m service -a "name=nginx state=started enabled=yes" node01 --become
ansible -m file -a "path=/home/ec2-user/usingAnsible state=directory" node01 --become
ansible -m copy -a "src=Vagrantfile dest=/tmp" node01 --become

## this is a test commit

