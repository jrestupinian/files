{ config, pkgs, ... }:

{
  # Add configurations

  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = false;
  environment.systemPackages = [
  	pkgs.gnomeExtensions.gsnap
	pkgs.gnome-tweaks
  ];
}
