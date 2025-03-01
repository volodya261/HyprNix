{pkgs, ...}:

{

environment.systemPackages = with pkgs; [
  fishPlugins.grc
  fishPlugins.z
  fishPlugins.fzf-fish
  fzf
  grc
  fishPlugins.pisces
  fishPlugins.plugin-git
];


 programs.fish = {
	enable = true;
        interactiveShellInit = ''
        set fish_greeting # Disable greeting
        '';
	shellAliases = {
		"hor" = "home-manager switch --flake ./";
		"nor" = "sudo nixos-rebuild switch --flake ./";
        };
 };




 users.users.ultra.shell = pkgs.fish;
}
