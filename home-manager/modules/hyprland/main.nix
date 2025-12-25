{

  wayland.windowManager.hyprland = {
    enable = true;   
		systemd.enable = true;
    settings = {
	#env = [
	# "GDK_BACKEND, wayland"
	# "QT_QPA_PLATFORM,wayland"
	# "NIXOS_OZONE_WL,1"
        # "XDG_CURRENT_DESKTOP,Hyprland"
        # "XDG_SESSION_TYPE,wayland"
        # "XDG_SESSION_DESKTOP,Hyprland"
	# "MOZ_ENABLE_WAYLAND,1"
	# "DISABLE_QT5_COMPAT,0"
	# "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
	# "QT_AUTO_SCREEN_SCALE_FACTOR,1"
	# "GDK_SCALE,1"
	# "WLR_BACKEND,vulkan"
	# "WLR_RENDERER,vulkan"
	# "WLR_NO_HARDWARE_CURSORS,1"
	# "SDL_VIDEODRIVER,wayland"
	#];
        
	monitor =  [
	#",preferred,auto,1"
	"DP-1,2560x1440@180,auto,1, bitdepth, 10, cm, hdr, sdrbrightness, 1.25, sdrsaturation, 1.21"
				#"DP-1,2560x1440@180,auto,1.066667"
	"HDMI-A-2,1920x1080@75,auto,1, transform, 3"
	];

#			workspace = [
#			"1,monitor:DP-1"
#			"2,monitor:DP-1"
#			"3,monitor:DP-1"
#			"4,monitor:DP-1"
#			"5,monitor:HDMI-A-1"
#			"6,monitor:HDMI-A-1"
#			"7,monitor:HDMI-A-1"
#			];	

       "$mainMod" = "SUPER";
       "$terminal" = "kitty";
       "$file" = "thunar";

	xwayland = {
				force_zero_scaling = true;
			};

	exec-once = [
	 "dbus-update-activation-environment --systemd --all"
	 "blueman-applet &"
	 "nm-applet &"
   "hypridle &"
	 "dunst &"
	 "waybar &"
	 "wl-clip-persist --clipboard both &"
   "wl-paste --watch cliphist store &"
	 "yandex-disk start && yandex-disk sync"
	];

	input = {
          kb_layout = "us,ru";
          kb_options = "grp:win_space_toggle";
        };

	general = {
          gaps_in = 1;
          gaps_out = 1;

          border_size = 1;

         # "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
         # "col.inactive_border" = "rgba(3c3836ff)";

          resize_on_border = true;

          allow_tearing = false;
          layout = "dwindle";
        };

        decoration = {
          rounding = 2;

          active_opacity = 1.0;
          inactive_opacity = 1.0;

          blur = {
           enabled = false;
           size = 7;
           passes = 6;
           new_optimizations = true;
           ignore_opacity = true;
           xray = true;
          };
        };

	animations = {
          enabled = false;
          bezier = [
            "wind, 0.05, 0.0, 0.1, 1.05"
            "winIn, 0.1, 1.1, 0.1, 1.1"
            "winOut, 0.3, -0.3, 0, 1"
            "liner, 1, 1, 1, 1"
          ];

          animation = [
              "windows, 1, 1, wind, slide"
              "windowsIn, 0, 0, winIn, slide"
              "windowsOut, 0, 0, winOut, slide"
              "windowsMove, 1, 1, wind, slide"
              "border, 1, 1, liner"
              "borderangle, 1, 30, liner, loop"
              "fade, 1, 1, default"
              "workspaces, 1, 1, wind"
          ];
        };
	
	dwindle = {
          pseudotile = true;
          preserve_split = true;
        };

	master = {
          new_status = "slave";
          new_on_top = true;
          mfact = 0.5;
        };

        misc = {
          force_default_wallpaper = 0;
          disable_hyprland_logo = true;
        };
    };
  };
}
