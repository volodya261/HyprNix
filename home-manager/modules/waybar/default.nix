{

	
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
        layer = "bottom";
        position = "top";
        height = 24;
				margin-top = 0;
				margin-bottom = 0;
				margin-left = 0;
				margin-right = 0;
		
				modules-left = [ "custom/cpuinfo" "custom/mem" "idle_inhibitor" "custom/play"];
				modules-center = [ "hyprland/workspaces" ];
				modules-right = ["clock" "hyprland/language" "tray" "pulseaudio"];

				"hyprland/workspaces" = {
		 		   all-outputs = true;
           format = "{name}";
           on-scroll-up = "hyprctl dispatch workspace e+1 1>/dev/null";
           on-scroll-down = "hyprctl dispatch workspace e-1 1>/dev/null";
           sort-by-number = true;
           active-only = false;
				};
			  
        "clock" = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
        };

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

        "tray" = {
          icon-size = 14;
          spacing = 1;
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

      };
   };
}
