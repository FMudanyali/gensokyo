{pkgs, ...}:

{
    users.users.furkan = {
        isNormalUser = true;
        extraGroups = ["wheel" "storage" "power"];
        shell = pkgs.zsh;
    };
  
    environment.variables = {
        EDITOR = "nvim";
        BROWSER = "firefox";
        _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd";
    };

    nix.gc.automatic = true;
    nix.gc.options = "--delete-older-than 3d";

    hardware.opengl = {
        enable = true;
        extraPackages = with pkgs; [
            vaapiVdpau
            libvdpau-va-gl
        ];
        extraPackages32 = with pkgs.pkgsi686Linux; [
            vaapiVdpau
            libvdpau-va-gl
        ];
    };

    system.stateVersion = "21.05";
}
