{config, pkgs, ...}:
let
    vscode-with-extensions = pkgs.vscode-with-extensions.override {
        vscodeExtensions = (import ./whatever/vscode-extensions.nix pkgs).extensions;
    };

in {
    config = {
        nixpkgs.overlays = [(self: super: {
            win95-gtk-theme = self.callPackage ./whatever/win95-gtk-theme.nix {};
        })];
        nixpkgs.config.allowUnfree = true;
        environment.systemPackages = with pkgs; [
            vscode-with-extensions
            neovim
            discord
            spotify
            lutris
            wine-staging
            mpv
            xarchiver
            gcc
            clang
	    git
            filezilla
            ffmpeg
            atomicparsley # youtube-dl uses this while merging to mp4
            transmission-gtk
            python3
            neofetch
            htop
            glxinfo # for glxgears....
            youtube-dl
            wacomtablet
            wget
            firefox
            zsh
            tdesktop
	    runelite
	    sylpheed # epic mail client
            jdk16_headless
            minecraft
            steam-run-native

	    #xfce stuff, prolly dont need half but whatever
	    xfce.xfce4-whiskermenu-plugin
	    xfce.tumbler
	    xfce.mousepad
	    xfce.ristretto
	    xfce.xfce4-notifyd
	    xfce.xfce4-terminal
	    xfce.thunar-volman
	    xfce.xfce4-icon-theme
	    xfce.xfce4-taskmanager
	    xfce.xfce4-screenshooter
	    xfce.xfce4-sensors-plugin
	    xfce.xfce4-cpufreq-plugin
	    xfce.thunar-archive-plugin
	    xfce.xfce4-clipman-plugin
	    xfce.xfce4-cpugraph-plugin
	    xfce.xfce4-pulseaudio-plugin
	    xfce.xfwm4-themes
        ];
        programs.steam.enable = true;
    };
}
