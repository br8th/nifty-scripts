#! /bin/bash
#: Options 		: d - the database name

## List of options that the program will accept.
## Those options that take arguments are followed by a colon:
optstring=d:
dbname=

while getopts $optstring opt
do
	case $opt in
		d) dbname=$OPTARG ;;
		*) exit 1 ;;
	esac
done

if [ -n "$dbname" ]
then
	date=$(date +%d_%m_%Y)
	sql_file=$dbname\_${date}.sql
	mysqldump --opt --user=root --password $dbname > $sql_file
else
	printf "No file name was entered \n"
	exit 1
fi


