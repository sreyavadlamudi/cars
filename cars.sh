#! /bin/bash
# cars.sh
# Sreya Vadlamudi

echo -n "type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program: "
read -r n
case "$n" in
	"1") echo "Enter new car information: ";;
	"2") echo "List of cars:"
	     sort -n My_old_cars.txt;;
	"3") echo "Goodbye";;
	*) echo "Sorry that is not one of the options."
esac
if [ $n -eq 1 ]
then
	echo -n "Year: "
	read y
	echo -n "Make: "
	read m
	echo -n "Model: "
	read o
	echo "$y":"$m":"$o" >> My_old_cars.txt
fi
while [ "$n" -ne 3 ]
do
	echo -n "type the number 1 to enter a new car
type the number 2 to display the list of cars
type the number 3 to quit and exit the program: "; read n
        case "$n" in
	     "1") echo "Enter new car information: ";;		  
             "2") echo "List of cars:" 
		  sort -n My_old_cars.txt;;
      	     "3") echo "Goodbye";; 
	     *) echo "Sorry that is not one of the options."
        esac
if [ $n -eq 1 ]
then
	echo -n "Year: "
	read y
	echo -n "Make: "
	read m
	echo -n "Model: "
	read o
        echo "$y":"$m":"$o" >> My_old_cars.txt
fi
done
