
while :
do
  read -s -n 1 key
  case "$key" in
    e)
	echo "you pressed e"
	;;
    w)
	echo "you pressed w"
	;;
    q)
	echo "you pressed q"
	;;
  esac
done
