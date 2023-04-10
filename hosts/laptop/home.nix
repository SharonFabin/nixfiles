{ config, lib, pkgs, ... }:

{
  home = {
    username = "sharon";
    homeDirectory = "/home/sharon";

    packages = with pkgs; [vscode];
  };
  programs = {
    home-manager.enable = true;
  };

  home.stateVersion = "22.11";
}

