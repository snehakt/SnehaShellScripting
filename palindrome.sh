IsPalindrome() {
number=$1
reversed=$(echo $number | rev)
if [ "$number" = "$reversed" ] 
then
echo "palindrome"
else 
echo "not a palindrome"
fi
}

read -p "enter the first number: " num1
read -p "enter the second number: " num2

echo "number 1 is $(IsPalindrome $num1)"
echo "number 2 is $(IsPalindrome $num2)"
