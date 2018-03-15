cd ~
clear
pip install pywinrm[kerberos]
export GUID=`hostname | awk -F"." '{print $2}'
export GUID=hostname | awk -F"." '{print $2}'
echo GUID
export GUID=`hostname | awk -F"." '{print $2}'`
echo GUID
echo $GUID
export GUID_CAP=`echo ${GUID} | tr 'a-z' 'A-Z'`
echo GUID_CAP
echo $GUID_CAP
cat << EOF > /etc/krb5.conf.d/ansible.conf
vi /etc/krb5.conf.d/ansible.conf
kinit administrator@AD1.${GUID_CAP}.EXAMPLE.OPENTLC.COM
cat /etc/ansible/hosts 
kinit administrator@AD1.${GUID_CAP}.EXAMPLE.OPENTLC.COM
klist
exit
ssh-keygen
cd ~/.ssh/
ls -l
cat id_rsa.pub 
cd..
cd ..
clear
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pem -O ~/.ssh/openstack.pem
chmod 400 ~/.ssh/openstack.pem
ssh -i ${MYKEY} ${MYUSER}@workstation-${GUID}.rhpds.opentlc.com
ssh -i /root/.ssh/openstack.pem cloud-user@workstation-779b.rhpds.opentlc.com
cat << EOF >> ssh.cfg
Host workstation-${GUID}.rhpds.opentlc.com
 Hostname workstation-${GUID}.rhpds.opentlc.com
 IdentityFile ~/.ssh/openstack.pem
 ForwardAgent yes
 User cloud-user
 StrictHostKeyChecking no
 PasswordAuthentication no

Host 10.10.10.*
 User cloud-user
 IdentityFile ~/.ssh/openstack.pem
 ProxyCommand ssh -F ./ssh.cfg workstation-${GUID}.rhpds.opentlc.com -W %h:%p
 StrictHostKeyChecking no
EOF

cat << EOF > osp_jumpbox_inventory
[jumpbox]
workstation-${GUID}.rhpds.opentlc.com ansible_ssh_user=cloud-user ansible_ssh_private_key_file=~/.ssh/openstack.pem
EOF

ansible -i osp_jumpbox_inventory all -m ping
ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
 cat << EOF > ansible.cfg
[defaults]
inventory=./osp_jumpbox_inventory

[privilege_escalation]
become=True
become_method=sudo

[ssh_connection]
ssh_args=" -F ./ssh.cfg -o ControlMaster=auto -o ControlPersist=60s"
host_key_checking=False
EOF

ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
ssh.cfg
vi ssh.cfg
 osp_jumpbox_inventory
vi osp_jumpbox_inventory
vi ssh.cfg
ls -l
cd /root/.ssh/
ls-l
ls -l
ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
cd ..
cat osp_jumpbox_inventory
cat << EOF > osp_jumpbox_inventory
[jumpbox]
workstation-${GUID}.rhpds.opentlc.com ansible_ssh_user=cloud-user ansible_ssh_private_key_file=~/.ssh/openstack.pem
EOF

sudo vi osp_jumpbox_inventory 
ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
ansible -i osp_jumpbox_inventory all -m ping
ansible-galaxy init osp_network
cd osp_network/tasks/
vi main.yml 
cd ..
ls -l
cd ..
ls -l
vi osp_net.yml
ansible-playbook -i ./osp_jumpbox_inventory osp_net.yml 
vi osp_network/tasks/main.yml 
ansible-playbook -i ./osp_jumpbox_inventory osp_net.yml 
vi osp_network/tasks/main.yml 
ansible-playbook -i ./osp_jumpbox_inventory osp_net.yml 
vi osp_network/tasks/main.yml 
ls -l
vi osp_network/tasks/main.yml 
ansible-playbook -i osp_jumpbox_inventory osp_net.yml 
vi osp_network/tasks/main.yml 
ansible-playbook -i osp_jumpbox_inventory osp_net.yml 
