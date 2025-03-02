{ homeStateVersion, user, ... }: {
  
  imports = [
    ./modules
    ./home-packages.nix
  ];

  

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
    
  };
  
  dconf.settings = {
  "org/virt-manager/virt-manager/connections" = {
    autoconnect = ["qemu:///system"];
    uris = ["qemu:///system"];
  };

  };

}
