#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY$(getprop ro.boot.slot_suffix):28997648:baa2e47cff60b16948a5a9c1e8041be01d7715fd; then
  applypatch --bonus /vendor/etc/recovery-resource.dat \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT$(getprop ro.boot.slot_suffix):20660240:a51a81086ebb225f7a940f7e3fac685555dcc3e0 \
          --target EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY$(getprop ro.boot.slot_suffix):28997648:baa2e47cff60b16948a5a9c1e8041be01d7715fd && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
