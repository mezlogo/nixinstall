# nixinstall

## preparation steps:

- download iso
- burn iso
- boot to iso
- connect to internet
- set root password: `passwd`
- connect by ssh: `ssh -l nixos $ip -p $port`

## download this repo

```
nix-env -f '<nixpkgs>' -iA git
git clone https://github.com/mezlogo/nixinstall
nix run nixpkgs#git -- clone https://github.com/mezlogo/nixinstall.git
```

## basic configuration

- timezone
- hostname
- locale
- network
- root password
- user and groups
- user password
- ssh server
- hardware configuration
- boot loader
- remove beep kernel module
