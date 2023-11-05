declare -A student=([name]="sneha" [usn]=123 [branch]="Cse")
student+=([email]="sneha@gmail.com")
echo ${student[@]}
