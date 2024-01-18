echo "Attempting connection to controller"

apt-get update -q
apt-get -y install openssh-client

ssh -i ~/.ssh/authorized_keys root@$1

