clear
while :
do
  read -s -n 1 key
  case "$key" in
    w)
	echo "you pressed w"
	;;
    s)
	echo "you pressed s"
	;;
    a)
	echo "you pressed a"
	;;
	d)
	echo "you pressed d"
	;;
	j)
	echo "you pressed j"
	;;
  esac
done
