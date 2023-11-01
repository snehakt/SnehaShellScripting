randomCheck=$((RANDOM%3));
perHrSal=20;
workHr=0;
case $randomCheck in
0)
echo "Employee is absent";
workHr=0;
;;
1)
echo "employee is present";
workHr=8;
;;
2)
echo "employee is working as parttime";
workHr=4;
;;
*)
echo "not matching";
esac
sal=$(($perHrSal * $workHr));
echo "Employee has earned $sal $ today";

