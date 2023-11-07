read -p "Enter employee name: " name
read -p "Enter employee type (full-time or part-time): " employee_type
read -p "Enter hourly rate: " hourly_rate

if [ "$employee_type" == "full-time" ]
then
read -p "Enter hours worked: " hours_worked
else
hours_worked=8
fi
wage="$hours_worked * $hourly_rate"
echo "$name's daily wage is $wage"
