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

## test nix configuration

`nix-instantiate --parse $FILE`

## [PLANING] todo 5. wifi, bt, audio, video, 2D, browser 2d, bt headphones, keyd, bt mouse, bt keyboard, external monitor, backlight, nobeep, mic, webcam

## [PLANING] todo 4. notebook wifi configuration

## [PLANING] todo 3. vm/spice wayland/GNOME

## [WIP] todo 2. headless home manager

- install home manager
- create user configuration
- bash env
- bash history config
- bash vim mode
- bash alias
- bash PS1
- bash function
- bash script
- bash script to PATH
- bash completion

## [DONE] todo 1. headless vm with uefi and user

- create git repo with notes, scipts and configs
- create script for vm disk creation and vm run
- create script for declarative disk partitioning and nix os installing from this git repo
- create headless vm with uefi, systemd-boot, nixos, network-manager, user, hostname, locales, time zone and sshd service
