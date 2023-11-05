declare -A student=([name]="sneha" [usn]=123 [branch]="Cse")
for key in ${!student[@]}
do
echo $key
done
