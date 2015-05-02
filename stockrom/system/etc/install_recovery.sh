#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:16330752:c0db62b94586bf7dce3cd2e3144fcecb6ff749b7; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:13531136:6a34e6179636fcc9e897e773b7591c3e99265998 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery c0db62b94586bf7dce3cd2e3144fcecb6ff749b7 16330752 6a34e6179636fcc9e897e773b7591c3e99265998:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
