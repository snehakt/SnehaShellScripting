numbers=()

#generate 10 random 3 digit number
for ((i = 0; i < 10; i++)); do
   random_number=$((100 + RANDOM % 900))
   numbers+=($random_number)
done 

#print the generated numbers
echo "Generated numbers: ${numbers[*]}"

#find the 2nd largest and 2nd smallest numbers
first_largest=0
second_largest=0
first_smallest=1000
second_smallest=1000


for number in "${numbers[@]}"
do
if ((number > first_largest))
then
second_largest=$first_largest
first_largest=$number
elif ((number > second_largest && number != first_largest))
then
second_largest=$number
fi

if ((number < first_smallest))
then
second_smallest=$first_smallest
first_smallest=$number
elif ((number < second_smallest && number != first-smallest))
then
second_smallest=$number
fi
done

echo "2nd largest number: $second_largest"
echo "2nd smallest number: $second_smallest"
