declare -A birth_months
# Generate birth months for 50 individuals
for ((i = 1; i<= 50; i++));do
# Generate a random month (1 to 12) and year (1992 or 1993)
month=$((1 + $RANDOM % 12))
year=$((1992 + $RANDOM % 2))

# Store the individual's birth month and year in the associative array
birth_months["$month"]+="$year "
done

# Find and print individuals with the same birth months
for month in "${!birth_months[@]}"; do
year_list="${birth_months[$month]}"
year_count=$(echo $year_list | tr -s ' '| wc -w)

if [ $year_count -gt 1 ]; then
echo "Month $month: $year_count individuals born in $year_list"
fi
done
