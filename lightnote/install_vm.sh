#!/usr/bin/env bash

sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode disko disko.nix
sudo nixos-generate-config --root /mnt
sudo cp configuration.nix /mnt/etc/nixos/configuration.nix
sudo nixos-install
sudo nixos-enter --root /mnt -c 'passwd mezlogo'
