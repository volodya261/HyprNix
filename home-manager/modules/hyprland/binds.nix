{ pkgs, ...}:

{

  wayland.windowManager.hyprland.settings = {

bind = [
# APPS 
"$mainMod, N, exec, nekoray"
"Alt, T, exec, env QT_QPA_PLATFORM=wayland telegram-desktop"
"Alt, O, exec, obsidian"
"Alt, S, exec, steam"
"$mainMod, G, exec, lutris"		
"Alt, Z, exec, zathura"
"Alt, P, exec, pomodoro"

"$mainMod, Delete, exit, "
"$mainMod, W, togglefloating, "
"Alt, Return, fullscreen, "
"$mainMod, L, exec, hyprlock "
"$mainMod, Q, killactive,"
",mouse:276, killactive,"
"$mainMod, Return, exec, $terminal"
"$mainMod, E, exec, $file"
"$mainMod, F, exec, firefox"
"$mainMod, Tab, exec, rofi -show window || pkill rofi"
"$mainMod, A, exec, rofi -show drun || pkill rofi"
"$mainMod, V, exec, cliphist list | rofi -dmenu -theme-str 'window {width: 50%;} listview {columns: 1;}' | cliphist decode | wl-copy"
"$mainMod, Backspace, exec, rofi -show p -modi p:'rofi-power-menu --choices=shutdown/reboot'"
"Ctrl+Alt, W, exec, killall  .waybar-wrapped || waybar &"

"$mainMod CTRL , H, changegroupactive, b"
"$mainMod CTRL , L, changegroupactive, f"
"$mainMod, Left, movefocus, l"
"$mainMod, Right, movefocus, r"
"$mainMod, Up, movefocus, u"
"$mainMod, Down, movefocus, d"

"Alt, Tab, movefocus, d"
"Alt, H, movefocus, l"
"Alt, L, movefocus, r"
"Alt, K, movefocus, u"
"Alt, J, movefocus, d"

"$mainMod, 1, workspace, 1"
"$mainMod, KP_End, workspace, 1"
"$mainMod, 2, workspace, 2"
"$mainMod, KP_Down, workspace, 2"
"$mainMod, 3, workspace, 3"
"$mainMod, KP_Next, workspace, 3"
"$mainMod, 4, workspace, 4"
"$mainMod, KP_Left, workspace, 4"
"$mainMod, 5, workspace, 5"
"$mainMod, KP_Begin, workspace, 5"
"$mainMod, 6, workspace, 6"
"$mainMod, KP_Right, workspace, 6"
"$mainMod, 7, workspace, 7"
"$mainMod, KP_Home, workspace, 7"
"$mainMod, 8, workspace, 8"
"$mainMod, KP_Up, workspace, 8"
"$mainMod, 9, workspace, 9"
"$mainMod, 0, workspace, 10"

"$mainMod+Ctrl, Right, workspace, r+1"
"$mainMod+Ctrl, Left, workspace, r-1"
"$mainMod+Ctrl, Down, workspace, empty "
"$mainMod, mouse_down, workspace, e+1"
"$mainMod, mouse_up, workspace, e-1"
"$mainMod+Alt, S, movetoworkspacesilent, special"
"$mainMod, S, togglespecialworkspace,"
"$mainMod, J, togglesplit"
"$mainMod, K, pseudo,"

"$mainMod+Shift, 1, movetoworkspace, 1"
"$mainMod+Shift, 2, movetoworkspace, 2"
"$mainMod+Shift, 3, movetoworkspace, 3"
"$mainMod+Shift, 4, movetoworkspace, 4"
"$mainMod+Shift, 5, movetoworkspace, 5"
"$mainMod+Shift, 6, movetoworkspace, 6"
"$mainMod+Shift, 7, movetoworkspace, 7"
"$mainMod+Shift, 8, movetoworkspace, 8"
"$mainMod+Shift, 9, movetoworkspace, 9"
"$mainMod+Shift, 0, movetoworkspace, 10"
];

bindel = [ 
",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
];

bindm = [ 
"$mainMod, mouse:272, movewindow"
"$mainMod, mouse:273, resizewindow"
];

binde = [ 
"$mainMod+Shift, Right, resizeactive, 30 0"
"$mainMod+Shift, Left, resizeactive, -30 0"
"$mainMod+Shift, Up, resizeactive, 0 -30"
"$mainMod+Shift, Down, resizeactive, 0 30"
];

	
  };

}
