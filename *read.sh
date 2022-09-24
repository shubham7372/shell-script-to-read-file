echo "Enter the file name "
read fname 
if [ -z -$fname ]
then
	echo "there is no file here $fname "
	exit
fi
#terminal=`tty`

exec < $fname
count=1
while read line
do
	echo $count.$line
	count=`expr $count + 1`
done
#exec < $terminal
