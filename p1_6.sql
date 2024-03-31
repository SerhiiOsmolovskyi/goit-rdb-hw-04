CREATE TABLE LibraryManagement.borrowed_books (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES LibraryManagement.books(book_id),
    FOREIGN KEY (user_id) REFERENCES LibraryManagement.users(user_id)
);