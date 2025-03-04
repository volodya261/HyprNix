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
	",preferred,auto,1"
	"HDMI-A-1,1920x1080@165,auto,1"
	];

	workspace = [
	  "1,monitor:HDMI-A-1"
	  "2,monitor:HDMI-A-1"
	  "3,monitor:HDMI-A-1"
	  "4,monitor:HDMI-A-2"
	  "5,monitor:HDMI-A-2"
	  "6,monitor:HDMI-A-2"
	];	

       "$mainMod" = "SUPER";
       "$terminal" = "kitty";
       "$file" = "thunar";

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

	gestures = {
	 workspace_swipe = true;
	};

	general = {
          gaps_in = 2;
          gaps_out = 2;

          border_size = 2;

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
           enabled = true;
           size = 9;
           passes = 6;
           new_optimizations = true;
           ignore_opacity = true;
           xray = false;
          };
        };

	animations = {
          enabled = true;
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
