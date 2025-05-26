{ config, pkgs, lib, ... }:

{
  virtualisation.virtualbox.host.enable = true;

  virtualisation.virtualbox.guest = {
    enable = true;
    dragAndDrop = true;
  };

  users.extraGroups.vboxusers.members = [ "rootkit" ];
}

