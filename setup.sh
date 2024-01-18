echo "Attempting set up for SSH into controller"

mkdir -p ~/.ssh/
echo $1 >> ~/.ssh/authorized_keys

chmod 700 /.ssh
chmod 600 /.ssh/authorized_keys

lava-test-case pub-key-set --result pass

