#!/usr/bin/env bash

sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode disko /tmp/disk-config.nix
