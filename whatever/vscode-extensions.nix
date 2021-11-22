{ pkgs, ... }:

{
  extensions = (with pkgs.vscode-extensions; [
    ms-vscode.cpptools
    redhat.java
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
  {
    name = "vscode-java-pack";
    publisher = "vscjava";
    version = "0.18.6";
    sha256 = "48f65fc7c22779efa49d8a1bfbf22ace61a78e5700eb6cab171a55b2f76eb224";
  }
  {
    name = "vscodeintellicode";
    publisher = "VisualStudioExptTeam";
    version = "1.2.14";
    sha256 = "cf548ddfce5d2da4183f619fad6d033c3f37b869c3cb50c998582b9e9fd9e2c8";
  }
  {
    name = "vscode-java-dependency";
    publisher = "vscjava";
    version = "0.18.8";
    sha256 = "ab248b4b771a7589f2d3a3ccc4ffe56589855d2242dd0e294ea0e269927b5ffa";
  }
  {    
    name = "vscode-maven";    
    publisher = "vscjava";    
    version = "0.34.0";    
    sha256 = "e8a0041fd0a5fbb8a1f6c76c9b57dea9bf36ec595c2d25261b2ab6c083152d89";    
  }
  {    
    name = "vscode-java-test";    
    publisher = "vscjava";    
    version = "0.32.0";    
    sha256 = "c36e9c92ce4898aada6d6d153d995ac6a6addbfa09788434fd372221be6a0653";    
  }
  {    
    name = "vscode-java-debug";    
    publisher = "vscjava";    
    version = "0.36.0";    
    sha256 = "28278ed0c701b240d0c91d6bd739832e09caff701f9441c84cc36ae456f535dd";    
  }
  ];
}
