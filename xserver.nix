{config, pkgs, ...}:
{
    services.xserver = {
        enable = true;
        dpi = 60;
        videoDrivers = ["nvidia"];
	deviceSection = ''
	    Option         "MetaModes" "nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"
    	    Option         "AllowIndirectGLXProtocol" "off"
    	    Option         "TripleBuffer" "on"
	'';
	desktopManager = {
	    xterm.enable = false;
	    xfce.enable = true;
	};
	displayManager = {
	    defaultSession = "xfce";
	    autoLogin.enable = true;
	    autoLogin.user = "furkan";
	};
        layout = "us";
    };
}
