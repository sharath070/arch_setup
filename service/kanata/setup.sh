#! /usr/bin/env bash

sudo cp ~/.dotfiles/service/kanata/kanata.service /etc/systemd/system/kanata.service

sudo mkdir -p /etc/kanata/
sudo ln -s ~/.dotfiles/service/kanata/config.kbd /etc/kanata/config.kbd

sudo systemctl daemon-reload
sudo systemctl enable kanata.service
sudo systemctl start kanata.service

# do this changing the config
# sudo systemctl restart kanata.service
# sudo systemctl status kanata.service
