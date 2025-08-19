{ pkgs, inputs, ... }: {
	
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    gedit
    obs-studio
    obsidian
    pavucontrol
    telegram-desktop
    nekoray
    kitty
    networkmanagerapplet
    file-roller
    lact
    winbox4
    qbittorrent
		pomodoro-gtk
    # WORK Apps
		jmeter
    onlyoffice-desktopeditors
    remmina
		k9s
		talosctl
		lens
		kubernetes-helm
		inputs.talhelper.packages.x86_64-linux.default
		kubectl
		nano
    # CLI utils
    rofi-power-menu
    playerctl
    blueman
    fastfetch
    tree
		yandex-disk
    brightnessctl
    cliphist
    htop
    ntfs3g
    unzip
    wl-clipboard
    zip
    xdotool

    # WM stuff
    #libsForQt5.xwaylandvideobridge
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
    # Other
    nix-prefetch-scripts
    dunst
		ffmpeg-full
		ocamlPackages.gstreamer
		gst_all_1.gst-libav
		gst_all_1.gstreamer
		gst_all_1.gst-plugins-good
		gst_all_1.gst-plugins-bad
		gst_all_1.gst-libav
		gst_all_1.gst-plugins-ugly
  ];
}


