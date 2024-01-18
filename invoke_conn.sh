echo "Attempting connection to controller"

ping 10.60.1.191 -c 2

apt-get update -q
apt-get update --fix-missing
apt-get -y install openssh-client

ssh -i ~/.ssh/authorized_keys root@$1