if [ $# -ne 1 ]
then
echo "usage: $0 n"
exit 1
fi

n=$1
if [[ ! $n =~ ^[0-9]+$ ]]
then
echo "please enter a valid positive integer for 'n'."
exit 1
fi

echo "powers of 2 up to 2^$n:"
for ((i=0; i<=n; i++))
do
result=$((2**i))
echo "2^$i=$result"
done
