{ config, pkgs, ... }:

{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # boot.kernelModules = [ "evdi" ];
  # boot.extraModulePackages = [ config.boot.kernelPackages.evdi ];
}
