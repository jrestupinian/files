{ config, pkgs, ... }:

{
  # Add configurations
  nixpkgs.config.allowUnfree = true;
 
  services.xserver.videoDrivers = [ "displaylink" ];
  # systemd.services.dlm.wantedBy = [ "multi-user.target" ]; 
  systemd.services.dlm = {
    enable = true;
    wantedBy = [ "multi-user.target" ];
  };
}
