is_book_issued = "NO"

print("											   ")
print("Enter BookId")
book_id = input()

print("											   ")
print("Enter Enrollment Number")
enrollment_number = int(input())
print("											   ")

print("											   ")
print("Enter Student Name")
student_name = input()
print("											   ")


def issue_book(book_content):
	global is_book_issued
	is_book_issued = "YES"
	print("											   ")
	print("Enter Issued date")
	issued_date = str(input())

	print("										   	   ")
	print("Enter Return date")
	return_date = str(input())

	print(book_content)
	# book_content = book_content[:len(book_content)-1]

	# TODO: Check if available is needed
	# book_content.append("NO")
	book_content[2] = student_name
	book_content[3] = "YES"
	book_content[4] = issued_date
	book_content[5] = return_date
	book_content[7] = str(enrollment_number)

	book = ",".join(book_content)
	return book

with open('books.csv', 'r') as books_file:
	books = books_file.readlines()

with open('books.csv', 'w') as books_file:
	for book in books:
		book_content = book.split(",")
		print(book_content)
		print(book_content[6].strip())
		if book_content[6].strip() == book_id:
			new_book = issue_book(book_content)
			books_file.write(new_book)
			continue
		books_file.write(book)

	if (is_book_issued == "NO"):
		print("										   	   ")
		print("Book can't be issued due to")		
		print("Invalid Book Id / Book Issued Already")
	else:
		print("										   	   ")
		print("********************************************")
		print("Book issued Succesfully to  " + str(enrollment_number))
		print("********************************************")
		print("										   	   ")
