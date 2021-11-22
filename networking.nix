{
  networking = {
    hostName = "gensokyo";
    # for zfs
    hostId = "CAFEBEEF";
    useDHCP = false;
    interfaces.enp3s0.useDHCP = true;
    firewall.enable = true;
  };
}
