{
  virtualisation.libvirtd.enable = true;
  services = {
    zfs = {
      autoScrub.enable = true;
      trim.enable = true;
    };
  };
}