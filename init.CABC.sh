target=`getprop persist.sys.ecodisplay`
DefaultTarget=`cat /sys/class/graphics/fb0/eco_mode`


echo "$target"
echo "$DefaultTarget"

if [ "$target" == "" ]; then
     echo "persist.sys.ecodisplay is null"
elif [ "$target" != "$DefaultTarget" ]; then
     echo "change value"
     echo $target > /sys/class/graphics/fb0/eco_mode
     echo "$target > /sys/class/graphics/fb0/eco_mode"
     echo $DefaultTarget
elif [ "$target" == "$DefaultTarget" ]; then
     echo "persist.sys.ecodisplay is the same with Default value"
fi
