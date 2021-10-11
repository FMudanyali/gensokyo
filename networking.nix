{
  networking = {
    hostName = "gensokyo";
    # for zfs
    hostId = "CAFEBEEF";
    networkmanager.enable = true;
    useDHCP = false;
    interfaces.enp3s0.useDHCP = true;
    firewall.enable = true;
  };
}