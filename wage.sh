read -p "Enter employee name: " name
read -p "Enter hours worked: " hours_worked
read -p "Enter hourly rate: " hour_rate
wage=$($hours_worked * $hourly_rate")
echo "$name's daily wage is $wage"
