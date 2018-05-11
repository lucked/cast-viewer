#!/bin/bash

systemctl start X.service
systemctl start matchbox.service
systemctl start beamy.service

rm -rf /data/cast-downloads
mkdir -p /data/beamy-downloads

# By default docker gives us 64MB of shared memory size but to display heavy pages we need more.
umount /dev/shm
mount -t tmpfs shm /dev/shm
 
chown -R root:root /data