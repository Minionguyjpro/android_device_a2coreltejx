#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants


load_a260f()
{
    resetprop "ro.product.model" "SM-A260F"
    resetprop "ro.product.name" "a2coreltejx"
}

load_a260g()
{
    resetprop "ro.product.model" "SM-A260G"
    resetprop "ro.product.name" "a2coreltedd"
}

load_a260()
{
    resetprop "ro.product.model" "SM-A260"
    resetprop "ro.product.name" "a2corelte"
}

variant=$(getprop ro.bootloader)
echo "Running unified/variant script with $variant..." >> /tmp/recovery.log

case $variant in
    A260F)
        load_a260f
        ;;
    A260G)
        load_a260g
        ;;
    *)  # Fallback
        load_a260
        ;;

esac

exit 0
