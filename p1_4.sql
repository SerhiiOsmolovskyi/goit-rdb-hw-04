CREATE TABLE LibraryManagement.books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    publication_year YEAR,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES LibraryManagement.authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES LibraryManagement.genres(genre_id)
);