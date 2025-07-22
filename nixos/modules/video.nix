{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wdisplays # GUI for exploring and setting monitor options
    wlsunset # Gamma & temperature set for wayland supporting wlr-gamma-control-unstable-v1
  ];
}
