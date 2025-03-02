{ pkgs, ... }:
{
  # Устанавливаем fish и starship локально через home-manager
  home.packages = with pkgs; [
    fish
    starship
    fishPlugins.grc
    fishPlugins.z
    fishPlugins.fzf-fish
    fzf
    grc
  ];

  # Конфигурация для starship через home-manager
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold purple";
      };
      character = {
        success_symbol = "[ > ](bold green)";
        error_symbol = "[ > ](bold red)";
      };
      username = {
        show_always = true;
        format = "[$user]($style)@";
      };
      directory = {
        read_only = " 🔒";
        truncation_symbol = "…/";
      };
    };
  };

  # Конфигурация для fish через home-manager
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      starship init fish | source  # Инициализация starship в fish
    '';
    shellAliases = {
      "hor" = "home-manager switch --flake ./";
      "nor" = "sudo nixos-rebuild switch --flake ./";
    };
  };

  # Устанавливаем fish как оболочку по умолчанию для сессии
  home.sessionVariables.SHELL = "${pkgs.fish}/bin/fish";
}

