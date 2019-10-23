/Users/jmcphillips/Desktop/partnerPortal/LookBusy.sh
COLORS=("01;32" "01;31" "01;34" "01;36")
COUNTER=0
while true;
COLOR="${COLORS[$COUNTER ]}"
do head -c 200 /dev/urandom | od -An -N 192 -x  | GREP_COLOR="$COLOR" grep -E --color "([[:alpha:]][[:digit:]]){2}"; 
COUNTER=$(( $COUNTER + 1 ))
if [ $COUNTER == 4 ]
then 
    COUNTER=$(( $COUNTER - 4 ))
fi
sleep 0.1; done
