{ pkgs, ... }:

{
  boot = {
    zfs.enableUnstable = true;
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      grub.copyKernels = true;
    };
  };
}
