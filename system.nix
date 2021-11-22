{pkgs, ...}:

{
  system.stateVersion = "21.05";

  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 3d";
  
  users.users.furkan = {
    isNormalUser = true;
    extraGroups = ["wheel" "storage" "power" "audio"];
    shell = pkgs.zsh;
  };
 
  environment.variables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd";
  };

  #hardware.xpadneo.enable = true;
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      vaapiVdpau
      libvdpau-va-gl
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      vaapiVdpau
      libvdpau-va-gl
    ];
  };
}
