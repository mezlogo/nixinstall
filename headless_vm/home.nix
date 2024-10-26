{ pkgs, ...}: {

  programs.bash = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName  = "mezlogo";
    userEmail = "mezencevdenis@yandex.ru";
  };
}
