{


wayland.windowManager.hyprland.settings = {

windowrulev2 = [ 
"float,title:^(Картинка в картинке)$"
"size 520 350,title:^(Картинка в картинке)$, class: ()"
"move 100%-w-20, title:^(Картинка в картинке)$, class: (firefox)"
"float,class:^(nekoray)$"
"float,class:^(TelegramDesktop)$"
"size 675 1000,class:^(TelegramDesktop)$"
"center,class:^(TelegramDesktop)$"

"float,title:(File Operation Progress)"
"center,title:^(File Operation Progress)$"

"opacity 0.80 0.80,class:^(kitty)$"
"opacity 0.80 0.80,class:^(org.kde.ark)$"
"opacity 0.80 0.80,class:^(nwg-look)$"
"opacity 0.80 0.70,class:^(org.pulseaudio.pavucontrol)$"
"opacity 0.80 0.70,class:^(blueman-manager)$"
"opacity 0.80 0.70,class:^(nm-applet)$"
"opacity 0.80 0.70,class:^(nm-connection-editor)$"
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
"blur,logout_dialog"
];
  };
}
