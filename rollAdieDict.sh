declare -A results
while true;
do
#stimulate rolling a die
roll_result=$((1+$RANDOM%6))
#update the count for the rolled number in array
results[$roll_result]=$((results[$roll_result]+1))

#check if any number has reached 10 times
for number in "${!results[@]}"
do
if [[ ${results[$number]} -ge 10 ]]
then
echo "number $number reached 10 times first"
exit
fi
done
done

#find the number that reached the maximum and minimum times
max_number=1
min_number=1
for number in "${!results[@]}"
do
if [[ ${results[$number]} -gt ${results[$max_number]} ]]
then
max_number=$number
fi

if [[ ${results[$number]} -lt ${results[$min_number]} ]]
then
min_number=$number
fi
done

echo "Number $max_number reached the maximum times (10 times)"
echo "Number $min_number reached the minimum times (${results[$min_number]} times)"
