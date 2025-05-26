# flake.nix
{
  description = "KooL's NixOS-Hyprland with Chaotic Nyx";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    # hyprland.url = "github:hyprwm/Hyprland"; # hyprland development
    # distro-grub-themes.url = "github:AdisonCavani/distro-grub-themes";
    ags.url = "github:aylur/ags/v1"; # aylurs-gtk-shell-v1
  };

  outputs = inputs@{ self, nixpkgs, chaotic, ... }:
    let
      system = "x86_64-linux";
      host = "rootkit";
      username = "rootkit";

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations = {
        "${host}" = nixpkgs.lib.nixosSystem rec {
          specialArgs = {
            inherit system inputs username host;
          };
          modules = [
            ./hosts/${host}/config.nix
            # inputs.distro-grub-themes.nixosModules.default
            chaotic.nixosModules.nyx-cache
            chaotic.nixosModules.nyx-overlay
            chaotic.nixosModules.nyx-registry
          ];
        };
      };
    };
}
