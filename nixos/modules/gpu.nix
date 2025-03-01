{ pkgs, ... }:

{

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  # hardware.opengl has beed changed to hardware.graphics

   services.xserver.videoDrivers = ["amdgpu"];


}
