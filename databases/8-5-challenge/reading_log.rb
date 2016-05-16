# READING LOG
# Program that allows users to enter books read during each month.
# User can add books read for multiple months.
# Three tables with one-to-many relationship: months, books, rating.  month_id FOREGIN KEY for books and rating.
# Method for printing books read and rating for particular month

require 'sqlite3'

db = SQLite3::Database.new("reading_log.db")

create_month_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS months(
    id INTEGER PRIMARY KEY,
    month VARCHAR(255),
    year INT
  )
SQL

create_books_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255)
    month_id INT,
    FOREIGN KEY (month_id) REFERENCES months(id)
  )
SQL

create_rating_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS rating(
    id INTEGER PRIMARY KEY,
    rating INT,
    comment VARCHAR(255),
    month_id INT,
    FOREIGN KEY (month_id) REFERENCES months(id)
  )
SQL

db.execute(create_month_table_cmd)
db.execute(create_books_table_cmd)
db.execute(create_rating_table_cmd)