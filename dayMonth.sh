if [ $# -ne 2 ]
then
echo "$0 <day> <month>"
exit 1
fi

day=$1
month=$2

if ((month == 3 && day >=20)) || ((month > 3 && month < 6)) || ((month == 6 && day <=20))
then
echo "true"
else
echo "false"
fi
