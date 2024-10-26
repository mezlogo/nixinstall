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
cd nixinstall
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

## test nix configuration

`nix-instantiate --parse $FILE`
