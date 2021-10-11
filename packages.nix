{config, pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [(self: super: {
    # epic theme
    raleigh-reloaded = self.callPackage ./whatever/raleigh-reloaded.nix {};
    # really bad theme collection
    #windows-xp = self.callPackage ./whatever/windows-xp.nix {};
    # macOS finder clone but its buggy
    #filer = self.callPackage ./whatever/filer.nix {};
    vscode-with-extensions = super.vscode-with-extensions.override {
      vscodeExtensions = (import ./whatever/vscode-extensions.nix pkgs).extensions;
    };
  })];

  programs.steam.enable = true;
  environment.systemPackages = with pkgs; with libsForQt5; with plasma5; [
    raleigh-reloaded
    firefox
    vscode-with-extensions
    neovim
    discord
    spotify
    lutris
    wineWowPackages.staging
    (winetricks.override { wine = wineWowPackages.staging; })
    mpv
    xarchiver
    zip
    unzip
    gcc
    clang
    git
    filezilla
    neofetch
    htop
    glxinfo # for glxgears....
    youtube-dl
    wacomtablet
    wget
    zsh
    tdesktop
    runelite
    sylpheed # epic mail client
    jdk16_headless
    minecraft
    steam-run-native
    
    # It takes a lot to run dolphin properly......
    dolphin
    dolphin-plugins
    oxygen
    kdbusaddons
    karchive
    kfilemetadata
    kimageformats
    kwin
    kiconthemes
    kcmutils
    kservice
    ffmpegthumbs
    kdegraphics-thumbnailers
    knewstuff
    breeze-icons
    kde-gtk-config
    breeze-qt5
    print-manager
    
    #desktop setup
    lxqt.qterminal
    lxqt.lximage-qt
    xfce.xfce4-clipman-plugin
    xfce.xfce4-whiskermenu-plugin
    xfce.xfce4-screenshooter
  ];
}
