{ config, lib, pkgs, ... }:

{
  home = {
    username = "sharon";
    homeDirectory = "/home/sharon";
  };
  programs = {
    home-manager.enable = true;
  };

  home.stateVersion = "22.11";
}

