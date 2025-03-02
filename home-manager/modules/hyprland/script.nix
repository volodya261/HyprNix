{ pkgs, ... }:
let
  window = pkgs.writeShellScriptBin "window" ''
    # Получаем список окон с workspace в нужном формате
    windows=$(${pkgs.hyprland}/bin/hyprctl clients -j | ${pkgs.jq}/bin/jq -r '.[] | "Workspace " + (.workspace.id | tostring) + ": " + .title + " [" + .address + "]"')

    selected=$(echo "$windows" | ${pkgs.rofi}/bin/rofi -dmenu -i -p "Switch to window")

    if [ -n "$selected" ]; then
      # Извлекаем адрес окна из выбранного пункта
      window_address=$(echo "$selected" | ${pkgs.gawk}/bin/awk -F '[' '{print $2}' | ${pkgs.gawk}/bin/awk -F ']' '{print $1}')
      echo "Switching to window address: $window_address" >&2
      sleep 0.1
      ${pkgs.hyprland}/bin/hyprctl dispatch focuswindow "address:$window_address"
    fi
  '';

   screenshot = pkgs.writeShellScript "screenshot" ''
   #!/bin/sh

   temp_screenshot="/tmp/screenshot.png"
   save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')

   grim -g "$(slurp)" - | wl-copy && wl-paste > $temp_screenshot | dunstify "Screenshot of the region taken" -t 1000 && satty -f $temp_screenshot

   rm "$temp_screenshot"
  '';

in {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod, P, exec, ${screenshot}"
      "$mainMod, Tab, exec, ${window}/bin/window"
    ];
  };
}

