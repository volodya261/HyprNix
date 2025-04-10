- build

export NIXPKGS_ALLOW_UNFREE=1
nix-build default.nix


- install
nix-env -i ./result
