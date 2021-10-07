{
    services.xserver = {
        enable = true;
        dpi = 69; #lol
        videoDrivers = ["nvidia"];
        desktopManager = {
            xterm.enable = false;
            xfce = {
                enable = true;
            };
        };
        displayManager.defaultSession = "xfce";
        layout = "us";
    };
}