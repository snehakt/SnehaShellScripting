#to generate random 3 digit 10 numbers
declare -a numbers=()

for i in {1..10}
do
num= $((RANDOM % 900 + 100))

numbers+=($num)
done
echo ${numbers[@]}


