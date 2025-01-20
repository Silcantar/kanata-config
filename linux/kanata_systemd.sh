#!/usr/bin/env bash

mkdir /etc/kanata
cp ../config/rk65_Colemak_DHVK.kbd /etc/kanata/kanata.kbd
sudo install -m 644 kanata.service /lib/systemd/system/kanata.service
# sudo systemctl daemon-reload # maybe this will be required when changing the service file
sudo systemctl start kanata
sudo systemctl enable kanata