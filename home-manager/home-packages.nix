{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    obs-studio
    obsidian
    pavucontrol
    telegram-desktop
    nekoray
    kitty
    networkmanagerapplet
    kdePackages.ark
    lact
    qbittorrent
    # WORK Apps
    onlyoffice-desktopeditors
    winbox4
    remmina
    lens
    # CLI utils
    blueman
    tree
    yandex-disk
    brightnessctl
    cliphist
    htop
    ntfs3g
    unzip
    microfetch 
    wl-clipboard
    zip
    xdotool

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hypridle
    waybar
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
    qadwaitadecorations-qt6
    qadwaitadecorations
    # Other
    nix-prefetch-scripts
    dunst
  ];
}
