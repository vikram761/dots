{ config, pkgs, ... }: 

{
  users.users.vikram_18 = {
    isNormalUser = true;
    description = "Sriman Vikram";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };

  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      open-sans
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; }) 
    ];
  };

}
