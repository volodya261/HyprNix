{
  description = "My system configuration";

  inputs = {

    #nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";    

    home-manager = {
      #url = "github:nix-community/home-manager/release-24.11";
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      #url = "github:danth/stylix/release-24.11";
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nvf.url = "github:notashelf/nvf";
    nvf.inputs.nixpkgs.follows = "nixpkgs";

		talhelper.url = "github:budimanjojo/talhelper";

    # Игровая сборка Nix
    #jovian = {
    #  url = "github:Jovian-Experiments/Jovian-NixOS";
    #  inputs.nixpkgs.follows = "nixpkgs-unstable";	
    #};
    
    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "ultra";
    hosts = [
      { hostname = "nix-laptop"; stateVersion = "24.11"; }
      { hostname = "nix-pc"; stateVersion = "unstable"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
      ];
    };

  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
