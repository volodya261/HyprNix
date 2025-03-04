{
    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = ["ultra"];
    virtualisation.spiceUSBRedirection.enable = true;
    virtualisation.libvirtd.enable = true; 
}
