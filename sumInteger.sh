find_triplets() { 
arr=( "$@")
length=${#arr[@]}


for ((i = 0; i < length - 2; i++))
do
for ((j = i + 1; j < length - 1; j++))
do
for ((k=j+1; k<length; k++))
do
if [ $((arr[i] + arr[j] + arr[k])) -eq 0 ]
then
echo "triplet: ${arr[i]} ${arr[j]} ${arr[k]}"
fi
done
done
done
}
input_list=(-1 0 1 2 -1 -4)
find_triplets "${input_list[@]}"
