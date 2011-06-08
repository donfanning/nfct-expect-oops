set -v

make expect_create_userspace

sudo ./expect_create_userspace

while sleep 1; do

sudo conntrack -L c | grep 1.1.1.1
sudo conntrack -L e

done

