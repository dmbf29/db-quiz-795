def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE year < 1985" # SQL way
    Book.where("year < ?", 1985) # ActiveRecord way
  end

  def three_recent_jules
    query = "
      SELECT * FROM books b
      JOIN authors a ON a.id = b.author_id
      WHERE a.name = 'Jules Verne'
      ORDER BY b.year DESC
      LIMIT 3
    " # SQL statement
    author = Author.find_by(name: 'Jules Verne')
    author.books.order(year: :desc).limit(3) # "easy" way with 2 SQL statements
    # Book.joins(:author).where('authors.name = "Jules Verne"').order(year: :desc).limit(3) # HARD 1 SQL statement
  end

end
