#!/bin/bash

echo "***************************************************************"
printf '\n'
echo Skype Reminder.

mobile= 
hrs=  
min=  
sec=
delay=
N=

while getopts p:h:m:s:d:n: opt; do
    case $opt in
        p)
            mobile=$OPTARG
            ;;
        h)
            hrs=$OPTARG
            ;;
        m)
            min=$OPTARG
            ;;
        s)
            sec=$OPTARG
            ;;
        d)
            delay=$OPTARG
            ;;
        n)
            N=$OPTARG
            ;;
    esac
done

shift $((OPTIND - 1))


let 'hrs = hrs + 0'
let 'min = min + 0'
let 'sec = sec + 0'
let 'delay = delay + 0'
let 'N = N + 0'

let 'tot = min + (hrs * 60)'
let 'tot = sec + (tot * 60)'

printf '\n'
echo "Mobile: "$mobile
echo "Hrs: "$hrs
echo "Min: "$min
echo "Sec: "$sec
echo "Total Sec: "$tot

if [ $N -eq '0' ]
then
    let 'N = 1'
fi

printf '\n'
echo "Delay: "$delay
echo "Number of times: "$N

printf '\n'
sleep "$tot"
for (( c=1; c<=N; c++ ))
do
    echo "Call "$c
    skype --callto "$mobile"
    if [ $N -eq $c ]
    then
        break;
    fi
    sleep "$delay"
done
printf '\n'
echo "Thank You for using our service."
printf '\n'
echo "***************************************************************"
