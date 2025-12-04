{ pkgs, inputs, ... }:

{
	programs.tmux = {
         enable = true;
	 baseIndex = 1;
         mouse = true;
         escapeTime = 0;
         keyMode = "vi";
         terminal = "screen-256color";	
	 extraConfig = ''
	  unbind C-Space
	  set -g prefix C-Space
	  bind C-S send-prefix

	  set -g base-index 1
	  setw -g pane-base-index 1
	  set -g renumber-windows on
	  set -g default-terminal "xterm"

	  bind-key "|" split-window -h -c "#{pane_current_path}"
	  bind-key "\\" split-window -fh -c "#{pane_current_path}"

	  bind-key "-" split-window -v -c "#{pane_current_path}"
	  bind-key "_" split-window -fv -c "#{pane_current_path}"

	 '';

	 plugins = with pkgs; [
    	    ];
	};
}
