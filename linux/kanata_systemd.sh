#!/usr/bin/env bash

sudo systemctl --user stop kanata.service

sudo cp ../binary/kanata /usr/bin

sudo groupadd uinput
sudo usermod -aG input $USER
sudo usermod -aG uinput $USER
sudo cp 99-input.rules /etc/udev/rules.d/

sudo udevadm control --reload-rules && sudo udevadm trigger

ls -l /dev/uinput

sudo modprobe uinput

mkdir -p ~/.config/systemd/user

cp kanata.service ~/.config/systemd/user/

bash update_config.sh

systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service   # check whether the service is running