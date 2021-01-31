#!/bin/bash
# prepearing for working eiyh jenkins
groupadd jenkins
useradd -d /home/jenkins -m -r -s /bin/bash -g jenkins jenkins
mount -t nfs -o rw 192.168.37.105:/mnt/IT-Academy/nfs-data/sa2-15-20/Ryabuhin-Artiom/ /mnt/nfs
#umount /mnt/nfs
#apt-get update && apt-get install openjdk-8-jdk git maven
apt-get update -y
apt-get install openjdk-8-jdk -y
apt-get install git -y
apt-get install maven -y
# working with git repo
cd /mnt/nfs/html
git init
git remote add HESK https://github.com/CHESTER-ART/hesk
git fetch HESK
git checkout master
