echo "Welcome to Employee Wage Computation Program"

read -p "Enter employee name: " name
read -p "Enter hours worked: " hours_worked
read -p "Enter hourly rate: " hourly_rate

wage=$("$hours_worked*$hourly_rate")

echo "$name's wage is $wage"

