{ pkgs, ... }:
let

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
			# "$mainMod, Tab, exec, ${window}/bin/window"
    ];
  };
}

