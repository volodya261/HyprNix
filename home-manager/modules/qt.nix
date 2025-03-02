{ pkgs, ... }:
{
  home.packages = with pkgs; [
    papirus-icon-theme
    adwaita-qt
  ];

  # Конфигурация для Qt
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      package = pkgs.adwaita-qt;
      name = "adwaita-dark";
    };
  };

  # Переменные окружения для Qt
  home.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "gtk2";
    QT_STYLE_OVERRIDE = "adwaita-dark";
    GTK_THEME = "Adwaita-dark";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
  };
}

