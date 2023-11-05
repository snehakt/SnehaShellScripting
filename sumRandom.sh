# find sum and average
values=()
total=0


for i in {1..5}
do
value=$((RANDOM % 90 +10))
values+=($value)
total=$((total+value))
done

average=$((total/5))

echo "random values: ${values[@]}"
echo "sum; $total"
echo "average: $average"
