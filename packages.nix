{config, pkgs, ...}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };
  nixpkgs.overlays = [(self: super: {
    # epic theme
    raleigh-reloaded = self.callPackage ./whatever/raleigh-reloaded.nix {};
    # really bad theme collection
    #windows-xp = self.callPackage ./whatever/windows-xp.nix {};
    # macOS finder clone but its buggy
    #filer = self.callPackage ./whatever/filer.nix {};
    #vscode-with-extensions = super.vscode-with-extensions.override {
    #  vscodeExtensions = (import ./whatever/vscode-extensions.nix pkgs).extensions;
    #};
  })];

  programs.steam.enable = true;
  
  environment.systemPackages = #let unstable =
    #import (builtins.fetchTarball https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz)
    #{ config = config.nixpkgs.config; };
  
  #in
  with pkgs; with libsForQt5; [
    raleigh-reloaded
    firefox
    remmina
    gimp
    maven
    #vscode-with-extensions
    vscode
    neovim
    discord
    spotify
    lutris
    piper
    SDL2
    mpv
    xarchiver
    zip
    unzip
    unrar
    gcc
    clang
    git
    filezilla
    neofetch
    htop
    glxinfo # for glxgears....
    yt-dlp
    wacomtablet
    wget
    zsh
    tdesktop
    runelite
    sylpheed # epic mail client
    minecraft
    protontricks
    jdk
    jdk8
    jdk16
    
    notify-desktop
    wmctrl
    unrar
    patchelf
    ffmpeg
    audacious
    obs-studio
    retroarchBare
    sxiv
    transmission
    plasma-pa
  ];
}
