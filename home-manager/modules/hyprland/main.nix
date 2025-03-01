{

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
	env = [
	 "NIXOS_OZONE_WL,1"
         "XDG_CURRENT_DESKTOP,Hyprland"
         "XDG_SESSION_TYPE,wayland"
         "XDG_SESSION_DESKTOP,Hyprland"
         "QT_QPA_PLATFORM,wayland"
	 "GDK_SCALE,1"
	 "QT_AUTO_SCREEN_SCALE_FACTOR,1"
	];
        
	monitor =  ",1920x1080@60,auto,1";
       "$mainMod" = "SUPER";
       "$terminal" = "kitty";
       "$file" = "thunar";

	exec-once = [
	 "dbus-update-activation-environment --systemd --all"
	 "blueman-applet"
	 "nm-applet"
	 "dunst"
	 "wl-paste"
	 "wl-paste"
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
          "col.inactive_border" = "rgba(3c3836ff)";

          resize_on_border = true;

          allow_tearing = false;
          layout = "dwindle";
        };

        decoration = {
          rounding = 2;

          active_opacity = 1.0;
          inactive_opacity = 1.0;

          shadow = {
            enabled = false;
          };

          blur = {
           enabled = true;
           size = 6;
           passes = 4;
           new_optimizations = true;
           ignore_opacity = true;
           xray = true;
          };
        };

	animations = {
          enabled = false;
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
