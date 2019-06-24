BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:25:00 ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send -u critical "Low Battery" "Status $BATTINFO"
fi


if [[ `echo $BATTINFO | grep 'Not charging'` && `echo $BATTINFO | cut -f 5 -d " "` > 09:25:00  ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send -u critical "Battery Full" "Status $BATTINFO"
fi
