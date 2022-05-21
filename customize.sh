REPLACE="
"

remove_limitation() {
mkdir -p "$1"

cat >"$1/cn_feature.xml" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<!-- This is the standard set of features for devices that support the CN GMSCore. -->
EOF
}

if [ -f "/system/product/etc/sysconfig/cn_feature.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/product/etc/sysconfig"
	remove_limitation "${PERMISSION_PATH}"
elif [ -f "/system/etc/sysconfig/cn_feature.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/etc/sysconfig"
	remove_limitation "${PERMISSION_PATH}"
else
    ui_print "cn_feature.xml はありませんでした"
fi
