{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    mpv
    obs-studio
    obsidian
    pavucontrol
    telegram-desktop
    xfce.thunar
    kitty
    # CLI utils
    brightnessctl
    cliphist
    htop
    ntfs3g
    microfetch
    ueberzugpp
    unzip
    w3m
    wget
    wl-clipboard
    zip

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    waybar
    # Other
    nix-prefetch-scripts
  ];
}
