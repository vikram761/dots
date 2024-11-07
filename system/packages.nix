{ config, pkgs, ... }:
let
  cpstart = pkgs.writeScriptBin "cpstart" (builtins.readFile ../scripts/cp);
in
{
  environment.systemPackages = with pkgs; [
    cpstart
    swaynotificationcenter
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    asusctl
    fd
    ripgrep
    git
    wget
    wayland
    xdg-utils
    grim
    swww
    slurp
    wlogout
    networkmanagerapplet
    blueman
    brightnessctl

    clang
    clang-tools
    llvmPackages.libcxx

    pamixer
    zip
    unzip
    neovim
    wl-clipboard
  ];

  programs.thunar.enable = true;

  programs.zsh.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  systemd.user.services.swaync = {
    description = "Sway Notification Center";
    wantedBy = [ "hyprland-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.swaynotificationcenter}/bin/swaync";
      Restart = "always";
      RestartSec = 3;
    };
  };


}

