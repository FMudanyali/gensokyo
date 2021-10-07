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

    system.stateVersion = "21.05";
}