{config, pkgs, ...}:

{
  # Power Button Function
  services.logind = {
    extraConfig = ''
      HandlePowerKey=ignore
      HandleSuspendKey=ignore
      HandleHibernateKey=hibernate
      HandleLidSwitch=suspend
      HandleLidSwitchExternalPower=ignore
    '';
  };

  # Asusctl
  services.asusd.enable = true;

  # Display Manager
  services.xserver.enable = true;
  services.displayManager.sddm = {
    enable = true;
    theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
  };

  # Pipewire
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.libinput.enable = true;
}
