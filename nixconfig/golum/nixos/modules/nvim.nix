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
	pkgs.vimPlugins.fzf-lua
	pkgs.luajitPackages.luarocks-nix
        pkgs.tree-sitter
  ];
}
