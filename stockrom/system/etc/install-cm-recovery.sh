#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9177088 7ac066703920136895eca521f1807410019f1026 6565888 466d650e5f222d97f031f1c4844a5d98e07d081a
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9177088:7ac066703920136895eca521f1807410019f1026; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6565888:466d650e5f222d97f031f1c4844a5d98e07d081a EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 7ac066703920136895eca521f1807410019f1026 9177088 466d650e5f222d97f031f1c4844a5d98e07d081a:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
