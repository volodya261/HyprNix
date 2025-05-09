{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "bottom";
				#output = "DP-1";
        position = "top";
        height = 2;
        
        modules-left = ["custom/cpuinfo" "custom/mem" "idle_inhibitor" "custom/play" ];
        modules-center = ["custom/app" "hyprland/workspaces"];
        modules-right = [ "hyprland/language" "pulseaudio" "battery" "clock" "tray"];
        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = false;
        };

    "idle_inhibitor" = {
        format = "  {icon}";
        format-icons = {
            "activated" = "󰅶 ";
            "deactivated" = "󰛊 ";
        };
     };


    "custom/app" = {
        on-click = "rofi -show drun || pkill rofi";
        format = "󰾅 ";
        tooltip = true;
    };

    "custom/play" = {
        #exec = "mediaplayer.py --player ";
        format = "   {}";
					#return-type = "json";
				exec = "playerctl metadata title";
        on-click = "playerctl play-pause ";
        on-click-right = "playerctl next ";
        on-click-middle = "playerctl previous";
        escape = true;
				interval = 2;
        tooltip = true;
    };
                 

    "custom/cpuinfo" = {
        exec = ./cpuinfo.sh;
        return-type = "json";
        format = " {}";
        rotate = 0;
        interval = 5; 
        tooltip = true;
        max-length = 1000;
    };

#	"temperature" = {
#	  format = "{temperatureC}°C {icon}";
#	  forma-icons = ["" "" ""];
#	};

	"custom/mem" = {
         format = "  {} ";
         interval = 5;
         exec = "free -h | awk '/Mem:/{printf $3}'";
         tooltip = false;
	};

        "hyprland/language" = {
          format-en = "🇺🇸";
          format-ru = "🇷🇺";
          min-length = 5;
          tooltip = false;
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = "";
          format-icons = {
            "headphones" = "";
            "handsfree" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" ""];
          };
          on-click = "pavucontrol";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 1;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };

        "clock" = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
        };

        "tray" = {
          icon-size = 16;
          spacing = 1;
        };
      };
    };
  };
}
