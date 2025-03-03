{ inputs,  pkgs, ...}:
{

  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    overrides = {
      global = {
        # Force Wayland by default
        Context.sockets = [
          "wayland"
          "!x11"
          "!fallback-x11"
        ];
      };
    };
  };

 # systemd.services.flatpak-repo = {
 #   wantedBy = [ "multi-user.target" ];
 #   path = [ pkgs.flatpak ];
 #   script = ''
 #     flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 #   '';
 # };

}
