{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Soporte para aplicaciones 32 y 64 bits
    wineWowPackages.stable

    # winetricks (útil para instalar .NET, DirectX, etc.)
    winetricks
       # support 64-bit only
    (wine.override { wineBuild = "wine64"; })

   
    # Alternativas (usa SOLO UNA):
     wineWowPackages.staging       # Versión experimental
     wineWowPackages.waylandFull   # Para Wayland (experimental)
     wine64

  ];
}