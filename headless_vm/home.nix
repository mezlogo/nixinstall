{ config, pkgs, ...}: {
  
  home = {
    username = "mezlogo";
    homeDirectory = "/home/mezlogo";
    stateVersion = "24.05";

    shellAliases = {
        ll = "ls -al";
        hardware = "lshw -short";
    };
  };

  programs = {
    home-manager.enable = true;

    bash = {
        enable = true;
        shellAliases = {
            rebuild_nixos = "sudo nixos-rebuild switch";
            rebuild_home = "home-manager switch";
        };
    };

    git = {
        enable = true;
        userName  = "mezlogo";
        userEmail = "mezencevdenis@yandex.ru";
        extraConfig = {
            init.defaultBranch = "master";
        };
    };

    neovim = {
        enable = true;
        defaultEditor = true;
        plugins = with pkgs.vimPlugins; [
            everforest
            nerdtree
        ];
    };
  };
}
