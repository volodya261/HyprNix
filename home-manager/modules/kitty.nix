{ lib, ...}:

{

programs.kitty = lib.mkForce {
  enable = true; 
  settings = {
    font_size = 13;
	  term = "xterm-256color";
    #confirm_os_window_close = 0;
    enable_audio_bell = false;
    mouse_hide_wait = "-1.0";
    window_padding_width = 10;

		#include = "~/.config/kitty/theme.conf";
  };
};


}
