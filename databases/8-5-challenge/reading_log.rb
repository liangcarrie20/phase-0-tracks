# READING LOG PROGRAM
# Program that allows users to enter books read during each month.
# User can add books read for multiple months.
# Three tables with one-to-many relationship: months, books, rating.  month_id FOREGIN KEY for books and rating.
# User can remove month, remove book, remove rating, print books read for particular month, print ratings for particular month

require 'sqlite3'

db = SQLite3::Database.new("reading_log.db")

create_months_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS months(
    id INTEGER PRIMARY KEY,
    month VARCHAR(255),
    year INT
  )
SQL

create_books_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    month_id INT,
    book_title VARCHAR(255),
    book_author VARCHAR(255),
    FOREIGN KEY (month_id) REFERENCES months(id)
  )
SQL

create_ratings_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS ratings(
    id INTEGER PRIMARY KEY,
    month_id INT,
    comments VARCHAR(255),
    rating INT,
    FOREIGN KEY (month_id) REFERENCES months(id)
  )
SQL

db.execute(create_months_table_cmd)
db.execute(create_books_table_cmd)
db.execute(create_ratings_table_cmd)