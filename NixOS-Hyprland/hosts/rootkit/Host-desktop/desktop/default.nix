{ config, pkgs, ... }:

{
  services.xserver.displayManager.gdm.enable = true; 
 
  services.xserver.desktopManager.gnome.enable = true;

  # Opcional pero recomendado:
  services.gnome.core-utilities.enable = true;

  # Para usar pipewire (audio moderno en GNOME)
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };



  # Soporte para red (recomendado para escritorio)
  networking.networkmanager.enable = true;
}

