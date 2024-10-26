#!/usr/bin/env bash

git pull

sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
sudo nix-channel --update

sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch

mkdir -p $HOME/.config/nixpkgs
cp -n home.nix $HOME/.config/nixpkgs/home.nix
home-manager switch
