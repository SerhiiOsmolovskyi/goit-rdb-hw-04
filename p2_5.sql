SELECT * FROM librarymanagement.borrowed_books;

INSERT INTO LibraryManagement.borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES 
(1, 1, '2024-03-25', '2024-04-10'),
(2, 2, '2024-03-20', NULL);