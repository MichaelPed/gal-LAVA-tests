echo "Attempting connection to controller"

echo "RUNNING apt-get update -q"
apt-get update -q

echo "RUNNING apt-get update --fix-missing"
apt-get update --fix-missing

echo "RUNNING apt-get -y install openssh-client"
apt-get -y install openssh-client

echo "RUNNING ssh -i ~/.ssh/authorized_keys root@$1"
ssh -i ~/.ssh/authorized_keys root@$1