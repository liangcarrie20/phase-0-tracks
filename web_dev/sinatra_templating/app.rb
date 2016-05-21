# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/campus' do
    @chi = db.execute("SELECT * FROM students WHERE campus ='CHI'")
    @nyc = db.execute("SELECT * FROM students WHERE campus ='NYC'")
    @sd = db.execute("SELECT * FROM students WHERE campus ='SD'")
    @sf = db.execute("SELECT * FROM students WHERE campus ='SF'")
    @sea = db.execute("SELECT * FROM students WHERE campus ='SEA'")
  erb :campus
end

get '/campus_results' do
  @students = db.execute("SELECT * FROM students WHERE campus=?", [params['campus']])
  erb :campus_results
end

get '/search_campus' do
  erb :search_campus
end

# add static resources