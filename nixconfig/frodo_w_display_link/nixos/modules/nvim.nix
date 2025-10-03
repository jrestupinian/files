{ config, pkgs, ... }:

{
  # Add configurations
  environment.systemPackages = [
  	pkgs.neovim
  	pkgs.ripgrep
  	pkgs.lua
  	pkgs.fd
	pkgs.lazygit
	pkgs.gcc
	pkgs.fzf
	pkgs.fd
	pkgs.lazygit
	pkgs.vimPlugins.fzf-lua
  ];
}
