read -p "Enter employee name: " name
read -p "Enter employee type (full-time or part-time): " employee_type
read -p "Enter hourly rate: " hourly_rate

case "$employee_type" in
"full-time")
read -p "Enter total hours worked for the month: " total_hours_worked
;;
"part-time")
hours_per_day=8
total_hours_worked=0
total_days_worked=0
daily_wage=0
while [ $total_hours_worked -lt 100 ] && [ $total_days_worked -lt 20 ]
do
total_hours_worked=$((total_hours_worked + hours_per_day))
daily_wage=("$hours_per_day * $hourly_rate")
total_wage=("total_wage + $daily_wage")
total_days_worked=$((total_days_worked + 1))
done
;;
*)
echo "Invalid employee type entered."
exit 1
;;
esac
monthly_wage=("$total_hours_worked * $hourly_rate")
echo "$name's daily wage is $daily_wage"
echo "$name's monthly wage is $monthly_wage"
