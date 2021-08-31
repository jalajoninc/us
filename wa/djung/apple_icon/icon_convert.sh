#!/bin/bash
SRC='/Users/jblaine/GitHub/Jong/FPanda/chiang-mai'

printf "What is your name?  -> "
read NAME

#####################################
idx=( 0  1 2 3 4 5 6 7 8 9 10 11 12)
widthArray=( 20 29 40 60 58 76 87 80 120 152 167 180 1024  )
#heightArray=( 40  )

for i in *.png;
    do
        echo "Moving: %s\n"  "${i}";

        for t in ${idx[@]}; do
            echo "Moving: %s\n"  "${t}";
#            cp ${i} ${t}${i}
#            sips -z  ${widthArray[t]} ${widthArray[t]} ${t}${i}
            cp ${i} ${widthArray[t]}'output.png'
            sips -z  ${widthArray[t]} ${widthArray[t]} ${widthArray[t]}'output.png'
        done
done
