read -p "Enter employee name: " name
read -p "Enter employee type (full-time or part-time): " employee_type
read -p "Enter hourly rate: " hourly_rate

case "$employee_type" in
"full-time")
read -p "Enter total hours worked for the month: " total_hours_worked
;;
"part-time")
hours_per_day=8
total_hours_worked=$((20 * hours_per_day))
;;
*)
echo "Invalid employee type entered."
exit 1
;;
esac
monthly_wage=("$total_hours_worked * $hourly_rate")
echo "$name's monthly wage is $monthly_wage"
