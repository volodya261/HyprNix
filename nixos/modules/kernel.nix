{ pkgs, ... }: {
  boot.kernelPackages = pkgs.linuxPackages_zen;
  #boot.kernelPackages = pkgs.linuxPackages_xanmod_stable;
}
