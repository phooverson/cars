#! /bin/bash
#cars.sh
#Patrick Hooverson

quit="no"
while [ $quit != "yes" ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read choice

	case "$choice" in
		"1") echo "Year"; read year; echo "make"; read make; echo "Model"; read model; 
			str="$year:$make:$model"; 
			echo $str >> My_old_cars;;
		"2") sort My_old_cars;;
		"3")echo "Goodbye"; quit="yes";;
	esac
done

