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
    times_read INT,
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
  db.execute("INSERT INTO months (month, year) VALUES ('#{new_mo[0]}', #{new_mo[1]})")
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

def print_mo_tbl(db)
  month_table = db.execute("SELECT * FROM months")
  month_table.each do |month|
    puts "id = #{month[0]} #{month[1]} #{month[2]}"
  end
end

def mo_yr(month_id, db)
  mo_yr_fr_db = db.execute("SELECT month, year FROM months WHERE id=#{month_id}")
  mo_yr = "#{mo_yr_fr_db[0][0]} #{mo_yr_fr_db[0][1]}"
end

def add_book(month_id, db)
  puts "Enter book title: "
    book_title = gets.chomp.to_s
  puts "Enter times read: "
    times_read = gets.chomp.to_i
  db.execute("INSERT INTO books (month_id, book_title, times_read) VALUES (#{month_id}, ?, ?)", [book_title, times_read])
  puts "Book added.\n"
end

def add_rating(month_id, db)
  puts "Enter comments about the title: "
    comments = gets.chomp.to_s
  puts "Enter rating on a scale from 1 to 5: "
    rating = gets.chomp.to_i
  db.execute("INSERT INTO ratings (month_id, comments, rating) VALUES (#{month_id}, ?, ?)", [comments, rating])
  puts "Rating added.\n"
end 

def del_mo_books(month_id, db)
  print_mo_books(month_id, db)
  puts "Enter title of book to delete: "
  book_title = gets.chomp.to_s
  db.execute("DELETE FROM books WHERE book_title = '#{book_title}' AND month_id = #{month_id}")
  puts "Book deleted.\n"
end

def print_mo_books(month_id, db)
  month_books = db.execute("SELECT book_title, times_read FROM books WHERE month_id = #{month_id}")
  puts "All books read in " + mo_yr(month_id, db)
  total = 0
  count = 1
  month_books.each do |month|
    puts "#{count}. #{month[0]} - #{month[1]}"
    total += month[1]
    count += 1
  end
  puts "\nTotal books read: #{total}"
  return total
end

def del_mo_rating(month_id, db)
  print_mo_ratings(month_id, db)
  puts "Enter rating to delete: "
  rating = gets.chomp.to_i
  db.execute("DELETE FROM ratings WHERE rating = #{rating} AND month_id = #{month_id}")
  puts "Rating deleted.\n"
end

def print_mo_ratings(month_id, db)
  month_ratings = db.execute("SELECT comments, rating FROM ratings WHERE month_id = #{month_id}")
  total = 0
  count = 1
  month_ratings.each do |month|
    puts "#{count}. #{month[0]} - #{month[1]}"
    total += month[1]
    count += 1
  end
  puts"\nTotal rating: #{total}"
  return total
end

# UI
# Welcome user to program
# Ask user what he/she'd like to do from a list of items
# Allow user to exit
# Sub menu

puts "Welcome to your Reading Log!"
def main_menu(db)
  while true
    puts "Enter choice number:\n1. Add month \n2. View Month \n3. Delete Month \n4. View Months \n5. Exit"
    user_response = gets.chomp.to_i
    if user_response == 1
      month_id = add_new_mo(db)
    elsif user_response == 2
      month_id = choose_mo_id(db)
      sub_menu(month_id, db)
    elsif user_response == 3
      del_mo(db)
    elsif user_response == 4
      print_mo_tbl(db)
    elsif user_response == 5
      break
    end
    puts "Press enter to continue exiting"
    gets
  end
  puts "Do you really want to exit? (yes/no)"
  user_response = gets.chomp
  main_menu(db) if user_response == "no"
  puts "Bye!"
end

def sub_menu(month_id, db)
  puts "\nGathering..." + mo_yr(month_id, db)
  while true
    puts "Enter choice number:\n1. Add Book\n2. Add Rating\n3. Delete Book\n4. Delete Rating\n5. Print All Books Read in a Month\n6. Print All Ratings in a Month\n7. Return to Main Menu\n"
    user_response = gets.chomp.to_i
    puts
    if user_response == 1
      add_book(month_id, db)
    elsif user_response == 2
      add_rating(month_id, db)
    elsif user_response == 3
      del_mo_books(month_id, db)
    elsif user_response == 4
      del_mo_rating(month_id, db)
    elsif user_response == 5
      print_mo_books(month_id, db)
    elsif user_response == 6
      print_mo_ratings(month_id, db)
    elsif user_response == 7
      break
    end
    puts "Press enter to continue exiting"
    gets
  end
end

main_menu(db)