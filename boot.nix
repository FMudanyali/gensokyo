{
    boot = {
        loader = {
            systemd-boot.enable = true;
            efi.canTouchEfiVariables = true;
            grub.copyKernels = true;
        };
        zfs.enableUnstable = true;
    };
}