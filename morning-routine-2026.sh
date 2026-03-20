# morning-routine.sh
tput civis
clear


item9="Bathroom, plus clean glasses while in there"
item8=Shave
item7=Shower
item6="Brush teeth"
item5="Brush hair"
item4=Dress
item3="Make yourself smell nice with sprays"
item2=Drink
item1=Eat









counternum=1

currentdisplayed="$(echo $item1 && echo $item2 && echo $item3 && echo $item4 && echo $item5 && echo $item6 && echo $item7 && echo $item8 && echo $item9)"



echo "$currentdisplayed" | tail -n $counternum | head -n 1
while :
do

echo $counternum



  read -s -n 1 key
  case "$key" in
    w)
    clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1 && counternum="$(($counternum - 1))"
if [ "$counternum" -le "1" ]; then
counternum="1"
fi

	;;
    s)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1 && counternum="$(($counternum + 1))"

if [ "$counternum" -ge "9" ]; then
counternum="9"
fi	;;
    a)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
	d)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
	j)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
  esac
  # the below sleep value must be exactly 0.05s
  sleep 0.05s # length of input buffer is needed so holding keys works
  # but so the input lag isn't absolutely abysmal
  tput civis
  clear && echo "$currentdisplayed" | tail -n $counternum | head -n 1
done
