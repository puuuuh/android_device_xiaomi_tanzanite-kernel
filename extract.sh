rm -r ./modules
rm ./modules.load.*

mkdir ./modules

cp $2/ramdisk00/lib/modules/*.ko ./modules/
cp $1/vendor_dlkm/lib/modules/*.ko ./modules/
cp $1/system_dlkm/lib/modules/*.ko ./modules/

cp $2/ramdisk00/lib/modules/modules.load ./modules.load.vendor_ramdisk
cp $2/ramdisk00/lib/modules/modules.load.recovery ./modules.load.recovery
cp $1/system_dlkm/lib/modules/modules.load ./modules.load.system
cp $1/vendor_dlkm/lib/modules/modules.load ./modules.load.vendor

cp $2/dtb ./dtb/mt6789.dtb
