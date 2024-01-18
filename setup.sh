echo "Attempting set up for SSH into controller"

mkdir -p ~/.ssh/
echo $1 >> ~/.ssh/authorized_keys

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys


/etc/init.d/ssh restart
if [ $? -eq 0 ]; then
    lava-test-case sshd-restart --result pass
    echo "sshd re-started"
else
    lava-test-case sshd-restart --result fail
    echo "sshd re-start failed"
fi

echo "End of setup"

lava-test-case pub-key-set --result pass

