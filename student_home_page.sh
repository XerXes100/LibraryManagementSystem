echo "                                             "
echo "Enter Your Id"
echo "                                             "

read student_id

echo "                                             "
echo "Press Following Keys for Following Operations"
echo "                                             "
echo "1)	Search for a Book"
echo "2)    Check Current Issued Books"
echo "											   "

read operation_number

if [ $operation_number -eq 1 ]
then
	echo "                                             "
	echo "Enter BookId / Book Name / Author Name"
	echo "                                             "

	read search_query

	echo "                                             "
	echo " *****************  Books *******************"
	grep "$search_query" books.csv 
	echo "                                             "
elif [ $operation_number -eq 2 ]
then
	echo "                                             "
	echo " ************  Books Issued by $student_id ***************"
	# grep -q $student_id books.csv | while read -r col1 col2 col3 col4 col5 col6 col7 ; do
	# 	# echo "$col1"
	# 	echo "Book Name: $col2"
	# 	# echo "Student Name:$col3"
	# 	# echo "Issue date: $col5"
	# 	# echo "Return date: $col6"
	# 	# echo "\n"
	# done
	# grep $student_id books.csv | while read -r book_name student_name; do
	# 	echo "$book_name"
	# 	echo "$student_name"
	# done
	grep $student_id books.csv
	echo "                                             "
fi

