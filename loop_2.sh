for p in "Mercury 25" "Venus 67" "Earth 93"
do
    echo $p
    set -- $p
    echo "$1 $2,000,000 miles from the sun"
done
