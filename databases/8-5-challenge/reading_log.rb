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
  CREATE TABLE IF NOT EXISTS ratings(
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

def add_month(db)
  puts "Enter month and year ('December 2050)"
  new_month = gets.chomp
  new_month = new_month.split(" ")
  while new_month.length != 2
  	puts "Enter month and year ('December 2050)"
  	new_month = gets.chomp
  	new_month = new_month.split(" ")
  end
  db.execute("INSERT INTO months (month, year) VALUES ('#{new_month[0]}, #{new_month[1]})")
  month_id = db.execute("SELECT id FROM months WHERE month = '#{new_month[0]}' AND year = #{new_month[1]}")
  month_id = month_id[0][0]
  return month_id
end

def add_book(month_id, db)
  puts "Enter title of book: "
    title = gets.chomp
  puts "Enter author of book: "
    author = gets.chomp
  db.execute("INSERT INTO books (month_id, title, author) VALUES (#{month_id}, ?, ?)", [title, author])
  puts "Thank you \n"
end

def add_rating(month_id, db)
  puts "Enter rating on a scale of 1 to 5: "
    rating = gets.chomp.to_i
  puts "Enter comments: "
    comment = gets.chomp
  db.execute("INSERT INTO ratings (month_id, rating, comment) VALUES (#{month_id}, ?, ?", [rating, comment])
  puts "Thank you \n"
end

def print_month_table(db)
  month_table = db.execute("SELECT * FROM months")
  month_table.each do |month|
  	puts "id = #{month[0]} ||#{month[1]} #{month[2]}"
  end
end

def access_mo_yr(month_id, db)
  mo_yr_fr_db = db.execute("SELECT month, year FROM months WHERE id=#{month_id}")
  mo_yr = "#{mo_yr_fr_db[0][0]} #{mo_yr_fr_db[0][0]}"
end

# UI
# Welcome user to program ask user what they'd like to do.