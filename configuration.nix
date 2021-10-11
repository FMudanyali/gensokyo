{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./services.nix
    ./packages.nix
    ./fonts.nix
    ./home.nix
    ./networking.nix
    ./xserver.nix
    ./system.nix
    ./locales.nix
    ./sound.nix
  ];
}

