{pkgs, ...}:

{

environment.systemPackages = with pkgs; [
  fishPlugins.grc
  fishPlugins.z
  fishPlugins.fzf-fish
  fzf
  grc
  starship
];


  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold purple";
      };
      character = {
        success_symbol = "[ > ](bold green)";
        error_symbol = "[ > ](bold red)";
      };
      username = {
        show_always = true;
        format = "[$user]($style)@";
      };
      directory = {
        read_only = " 🔒";
        truncation_symbol = "…/";
      };
    };
  };


 programs.fish = {
	enable = true;
        interactiveShellInit = ''
        set fish_greeting # Disable greeting
        starship init fish | source
	'';
	shellAliases = {
		"hor" = "home-manager switch --flake ./";
		"nor" = "sudo nixos-rebuild switch --flake ./";
        };
 };

 users.users.ultra.shell = pkgs.fish;
}
