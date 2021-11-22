{
  virtualisation.libvirtd.enable = true;
  services = {
    ratbagd.enable = true;
    zfs = {
      autoScrub.enable = true;
      trim.enable = true;
    };
  };
}
