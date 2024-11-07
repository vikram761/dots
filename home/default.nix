{config, pkgs, ...}: {
    home.username = "vikram_18";
    home.homeDirectory = "/home/vikram_18";
    home.stateVersion = "24.05";
    home.packages = with pkgs; [
      rustup
      kitty
      postman
      vim-full
      fzf
      brave
      wofi
      zoxide
      btop
      pavucontrol
      killall
      go
      luarocks
      nodejs_22

      libreoffice
      lazygit
      bat
      yarn
      gtk4
      gtk3
      numix-icon-theme
      gnome-themes-extra
      dconf
    ];

    programs.starship.enable = true;

    imports = [ ./zsh.nix ];

    gtk.enable = true;

    home.file.".config" = {
    	source = ./dots;
    	recursive = true;
    };

    dconf.enable = true;
}
