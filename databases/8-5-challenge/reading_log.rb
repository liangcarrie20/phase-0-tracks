# READING LOG PROGRAM
# Program that allows users to enter books read during each month.
# User can add books read for multiple months.
# Three tables with one-to-many relationship: months, books, rating.  month_id FOREGIN KEY for books and rating.
# User can remove month, remove book, remove rating, print books read for particular month, print ratings for particular month

require 'sqlite3'