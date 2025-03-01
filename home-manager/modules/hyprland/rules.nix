{


wayland.windowManager.hyprland.settings = {

windowrulev2 = [ 
"float,title:^(Картинка в картинке)$"
"size 520 350,title:^(Картинка в картинке)$, class: ()"
"move 100%-w-20, title:^(Картинка в картинке)$, class: (firefox)"
"float,class:^(nekoray)$"
"float,class:^(org.telegram.desktop)$"
"opacity 0.90 0.90,class:^(firefox)$"
"opacity 0.80 0.80,class:^(kitty)$"
"opacity 0.80 0.80,class:^(org.kde.ark)$"
"opacity 0.80 0.80,class:^(nwg-look)$"
"opacity 0.80 0.80,class:^(qt5ct)$"
"opacity 0.80 0.80,class:^(qt6ct)$"
"opacity 0.80 0.70,class:^(org.pulseaudio.pavucontrol)$"
"opacity 0.80 0.70,class:^(blueman-manager)$"
"opacity 0.80 0.70,class:^(nm-applet)$"
"opacity 0.80 0.70,class:^(nm-connection-editor)$"
"opacity 0.80 0.70,class:^(polkit-gnome-authentication-agent-1)$"
"float,title:^(About Mozilla Firefox)$"
"float,class:^(firefox)$,title:^(Picture-in-Picture)$"
"float,class:^(firefox)$,title:^(Library)$"
"float,class:^(org.kde.ark)$"
"float,class:^(org.pulseaudio.pavucontrol)$"
"float,class:^(blueman-manager)$"
"float,class:^(nm-applet)$"
"float,class:^(nm-connection-editor)$"
];


layerrule = [ 
"blur,rofi"
"ignorezero,rofi"
"blur,notifications"
"ignorezero,notifications"
"blur,swaync-notification-window"
"ignorezero,swaync-notification-window"
"blur,swaync-control-center"
"ignorezero,swaync-control-center"
"blur,logout_dialog"
];
  };
}
