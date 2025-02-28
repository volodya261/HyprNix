{
    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = ["ultra"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;
}
