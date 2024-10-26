{ config, pkgs, ...}: {
  home.username = "mezlogo";
  home.homeDirectory = "/home/mezlogo";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

  programs.bash = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName  = "mezlogo";
    userEmail = "mezencevdenis@yandex.ru";
  };
}
