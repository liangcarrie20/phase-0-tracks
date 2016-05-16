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

def add_new_mo(db)
  puts "Enter month and year you want to add book(s) to.  For example, 'December 1995'"
  new_mo = gets.chomp
  new_mo = new_mo.split(" ")
  while new_mo.length != 2
    puts "Enter month and year in the format MONTH YEAR. For example, 'February 1995'"
    new_mo = gets.chomp
    new_mo = new_mo.split(" ")
  end
  db.execute("INSERT INTO months (month, year) VALUES ('#{new_mo[0]}', #{new_mo[1]}")
  month_id = db.execute("SELECT id FROM months WHERE month = '#{new_mo[0]}' AND year = #{new_mo[1]}")
  month_id = month_id[0][0]
  return month_id
end

def del_mo(db)
  print_mo_tbl(db)
  puts "Enter the ID of the month to delete: "
  mo_to_del = gets.chomp.to_i
  puts "Deletion in progress..."
  db.execute("DELETE FROM months WHERE id = #{mo_to_del}")
end

def choose_mo_id(db)
  print_mo_tbl(db)
  puts "Enter the ID of the month to access: "
  month_id = gets.chomp.to_i
  valid_mo_id = db.execute("SELECT id FROM months WHERE id = #{month_id}")
  while valid_mo_id.length == 0
    puts "Invalid ID, please enter valid ID: "
    month_id = gets.chomp.to_i
    valid_mo_id = db.execute("SELECT id FROM months WHERE id = #{month_id}")
  end
  return month_id
end


