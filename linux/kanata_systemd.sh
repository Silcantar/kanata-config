#!/usr/bin/env bash

mkdir -p /etc/kanata
sudo cp -f ../config/common.kbd /etc/kanata/common.kbd
sudo cp -f ../config/rk65_Colemak_DHVK.kbd /etc/kanata/kanata.kbd
sudo 
sudo install -m 644 kanata.service /lib/systemd/system/kanata.service
sudo systemctl daemon-reload # maybe this will be required when changing the service file
sudo systemctl start kanata
sudo systemctl enable kanata