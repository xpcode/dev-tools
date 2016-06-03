vi /etc/systemd/system/multi-user.target.wants/docker.service

# add   -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375

systemctl daemon-reload
service docker restart