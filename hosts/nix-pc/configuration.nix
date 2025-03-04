
{  pkgs, hostname, stateVersion, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ../../nixos/modules
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #boot.loader.grub.enable = true;
  #boot.loader.grub.device = "nodev";
  #boot.loader.grub.useOSProber = true;
  #boot.loader.grub.efiSupport = true;
  #boot.loader.efi.canTouchEfiVariables = true;
  #boot.loader.efi.efiSysMountPoint = "/boot";
  
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  networking.hostName = "nix-pc";
  time.timeZone = "Europe/Samara";

  nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-order-than 30d";	
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
   
  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.ultra = {
     isNormalUser = true;
     extraGroups = [ "wheel" "input" "networkmanager" "libvirtd"]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
	vim
	git
     ];
   };
  
programs.bash = {
  interactiveShellInit = ''
    if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
    then
      shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
      exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
    fi
  '';
};

  programs.firefox.enable = true;
  programs.nano.enable = false;
# usb automount
  services.udisks2.enable = true;
  nixpkgs.config.allowUnfree = true; 

  # List packages installed in system profile. To search, run:
  # $ nix search wget
   environment.systemPackages = with pkgs; [
     vim 
     home-manager
     openconnect
     jq
     wget
     lm_sensors
    ];

  system.stateVersion = "24.11"; # Did you read the comment?

}

