{ pkgs, ... }: {
  home.packages = with pkgs; [
    papirus-icon-theme
    libsForQt5.qt5ct
  ];
  qt = {
    enable = true;
#    platformTheme.name = "gtk2";
    style = {
      package = pkgs.adwaita-qt;
      name = "adwaita-dark";
    };
  };
}
