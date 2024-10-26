#!/usr/bin/env bash

git pull

sudo cp configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch

mkdir -p $HOME/.config/nixpkgs
cp -n home.nix $HOME/.config/nixpkgs/home.nix
home-manager switch
