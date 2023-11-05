declare -A student=([name]="Sneha"[usn]=123[branch]="CSE")
for value in ${student[@]}
do
echo $value
done
