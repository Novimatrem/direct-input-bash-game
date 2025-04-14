# jstest-graphical.sh
tput civis
clear
echo "w s a d j"
while :
do
  read -s -n 1 key
  case "$key" in
    w)
    clear
	echo "W s a d j"
	;;
    s)
	clear
	echo "w S a d j"
	;;
    a)
	clear
	echo "w s A d j"
	;;
	d)
	clear
	echo "w s a D j"
	;;
	j)
	clear
	echo "w s a d J"
	;;
  esac
  # the below sleep value must be exactly 0.05s
  sleep 0.05s # length of input buffer is needed so holding keys works
  # but so the input lag isn't absolutely abysmal
  tput civis
  clear && echo "w s a d j"
done
