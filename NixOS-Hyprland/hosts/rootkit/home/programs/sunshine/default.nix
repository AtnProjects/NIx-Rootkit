{ config, pkgs, ... }:

{
  services.sunshine = {
    enable = true;
    autoStart = true;
    capSysAdmin = true; # Solo necesario si usas Wayland
   
  };
}

