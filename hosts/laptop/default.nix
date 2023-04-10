{config, pkgs, user, ...}:

{
    imports = [
        (import ./hardware-configuration.nix)
    ];

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.efi.efiSysMountPoint = "/boot/efi";

    programs = {                              # No xbacklight, this is the alterantive
        dconf.enable = true;
        light.enable = true;
    };

    services = {
        tlp.enable = true;                      # TLP and auto-cpufreq for power management
        #logind.lidSwitch = "ignore";           # Laptop does not go to sleep when lid is closed
        auto-cpufreq.enable = true;
        blueman.enable = true;
    };
    
    

}