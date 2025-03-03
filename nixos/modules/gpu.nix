{ pkgs, ... }:

{

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  # hardware.opengl has beed changed to hardware.graphics

   services.xserver.videoDrivers = ["amdgpu"];

   systemd.services.lact = {
    description = "AMDGPU Control Daemon";
    after = ["multi-user.target"];
    wantedBy = ["multi-user.target"];
    serviceConfig = {
      ExecStart = "${pkgs.lact}/bin/lact daemon";
    };
    enable = true;
   };

}
