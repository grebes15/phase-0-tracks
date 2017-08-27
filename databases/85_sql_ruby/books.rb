
require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("writing.db")


create_table_cmd_authors = <<-SQL
CREATE TABLE IF NOT EXISTS authors (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
book_ID INT,
FOREIGN KEY (book_ID) REFERENCES books(id)
)
SQL

create_table_cmd_books = <<-SQL
CREATE TABLE IF NOT EXISTS books (
id INTEGER PRIMARY KEY,
name VARCHAR(255),
year_published INT
)
SQL

db.execute(create_table_cmd_authors)
db.execute(create_table_cmd_books)

def create_authors(db, name, book_ID)
	db.execute("INSERT INTO authors (name, book_ID) VALUES (?, ?)", [name, book_ID])
end

def create_books(db, name, year_published)
	db.execute("INSERT INTO books (name, year_published) VALUES (?, ?)", [name, year_published])
end
100.times do
	create_authors(db, Faker::Name.name, Faker::Number.between(1,5))
end

5.times do
	create_books(db, Faker::Name.title, Faker::Number.between(1950,2015))
end