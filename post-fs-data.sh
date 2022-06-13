#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
# This script will be executed in post-fs-data mode

#Copy original nr_product_country.xml to the MODDIR to overwrite dummy file
mkdir $MODDIR/system/etc
cp /system/etc/nr_product_country.xml $MODDIR/system/etc

sed -i 's@<operator mcc="001"/>@<operator mcc="001"/>\n    <operator mcc="440"/>@g' $MODDIR/system/etc/nr_product_country.xml
