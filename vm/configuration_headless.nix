{ config, lib, pkgs, ... }: {
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixvm";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "ru_RU.UTF-8/UTF-8"
    ];
  };

  users.users.mezlogo = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "input" ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    tree
  ];

  services.openssh.enable = true;
  networking.firewall.enable = false;

  system.stateVersion = "24.05";
}
