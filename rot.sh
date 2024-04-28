interval=0.25
rcount="0"
while true
do
((rcount+=1))
case $rcount in 
    1)ech -ne '-'"\b"
        sleep $interval
        ;;
    2) echo -ne '\\'"\b"
        sleep $interval
        ;;
    3) echo -ne '|'"\b"
        sleep $interval
        ;;
    4) echo -ne '/'"\b"
        sleep $interval
        ;;
    ##*) rcount="0"
esac