{pkgs, ...}:
{
    extensions = (with pkgs.vscode-extensions; [
        ms-vscode.cpptools
        ms-python.python
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
        name = "visual-studio-blue-theme";
        publisher = "DanijelMalinovic";
        version = "0.0.1";
        sha256 = "7f087b5770a3126ed2c95ecffe739379e636aba5802dbc7295417c53d3e65d6c";
    }
    {
        name = "sonarlint-vscode";
        publisher = "SonarSource";
        version = "2.3.0";
        sha256 = "00399b41dea014c1df15de0392afb45466c15a7c664186d65ad9db6c5bdc5321";
    }
    {
        name = "cmake";
        publisher = "twxs";
        version = "0.0.17";
        sha256 = "0858af6b500efe81e9b336e977b94bb43cdbbf5622e79c903903cffe40931f86";
    }
    {
        name = "cmake-tools";
        publisher = "ms-vscode";
        version = "1.8.1";
        sha256 = "745a5e8d222528ec6d2efaaad4a8ad84859ccad22cca57cebfd449c9c64c354c";
    }
    {
        name = "Nix";
        publisher = "bbenoist";
        version = "1.0.1";
        sha256 = "ab0c6a386b9b9507953f6aab2c5f789dd5ff05ef6864e9fe64c0855f5cb2a07d";
    }
    ];
}
