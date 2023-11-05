
declare -A student=([name]="sneha" [usn]=123 [branch]="Cse")
student+=([name]="sne")
echo ${student[@]}
