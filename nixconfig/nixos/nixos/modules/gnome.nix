{ config, pkgs, ... }:

{
  # Add configurations
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.enable = true;
}
