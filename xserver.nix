{config, pkgs, ...}:
{
  services.xserver = {
    enable = true;
    # My TV is reported as 72" lol
    dpi = 96;
    videoDrivers = ["nvidia"];
    # Nvidia specific, for screen tearing
	  deviceSection = ''
	    Option     "MetaModes" "nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"
  	  Option     "AllowIndirectGLXProtocol" "off"
  	  Option     "TripleBuffer" "on"
	  '';
	  desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
	  };
	  displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "furkan";
      defaultSession = "xfce";
    };
    layout = "us";
    # mouse acceleration is hell
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat";
      };
    };
  };
}
