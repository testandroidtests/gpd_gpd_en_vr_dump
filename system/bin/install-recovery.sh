#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:10822956:bdffd13260dcdf65500f38166d2ae665165d9e2a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:8875304:42d89b780b17d715050cc9c49693fb44bd957da6 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery bdffd13260dcdf65500f38166d2ae665165d9e2a 10822956 42d89b780b17d715050cc9c49693fb44bd957da6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
