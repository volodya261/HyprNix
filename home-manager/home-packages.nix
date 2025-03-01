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
    nekoray
    kitty
    networkmanagerapplet
    # CLI utils
    blueman
    yandex-disk
    brightnessctl
    cliphist
    htop
    ntfs3g
    unzip
    fastfetch
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
    hyprlock
    hyprpaper
    wlogout
    cliphist
    parallel
    imagemagick
    libnotify
    ## scrinshot
    satty
    slurp
    grim
    # Theme
    nwg-look
    hypridle
    qadwaitadecorations-qt6
    qadwaitadecorations
    # Other
    nix-prefetch-scripts
    dunst
  ];
}
