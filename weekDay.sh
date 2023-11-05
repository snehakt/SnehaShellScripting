echo "Enter a number (1-7)  to represent a day of the week"
read dayNum

case $dayNum in
1) echo "Monday";;
2) echo "tuesday";;
3) echo "wednesday";;
4) echo "thursday";;
5) echo "friday";;
6) echo "saturday";;
7) echo "sunday";;
*) echo "invalid input,please enter a number between 1 and 7";;
esac
