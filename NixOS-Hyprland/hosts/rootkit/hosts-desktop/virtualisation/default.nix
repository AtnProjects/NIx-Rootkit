{ config, pkgs, lib, ... }:

{
  programs.dconf.enable = true;

  users.users.rootkit.extraGroups = [ "libvirtd" "kvm" ];

  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    win-virtio
    win-spice
    gnome.adwaita-icon-theme
    qemu_kvm
  ];

  virtualisation = {
    libvirtd = {
      enable = lib.mkForce true;
      qemu = {
        package = pkgs.qemu_kvm;
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };

  services.spice-vdagentd.enable = true;
  systemd.services.virtlogd.enable = true;

  programs.virt-manager.enable = lib.mkForce true;
}
	