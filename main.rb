require_relative 'book'  # Include the Book class defined in book.rb
require_relative 'label' # Include the Label class defined in label.rb

# Create an array to store books and labels
books = []
labels = []

def print_options
  puts "Options:"
  puts "1. List all books"
  puts "2. List all labels"
  puts "3. Add a book"
  puts "4. Quit"
end

loop do
  puts "Welcome to the Library Management App"
  print_options
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "List of Books:"
    books.each do |book|
      puts "ID: #{book.id}, Author: #{book.first_name} #{book.last_name}"
    end
  when 2
    puts "List of Labels:"
    labels.each do |label|
      puts "ID: #{label.id}, Title: #{label.title}, Color: #{label.color}"
    end
  when 3
    puts "Add a Book:"
    print "Enter Author's First Name: "
    first_name = gets.chomp
    print "Enter Author's Last Name: "
    last_name = gets.chomp

    # Create a new book and add it to the list of books
    book = Book.new(books.length + 1, first_name, last_name)
    books << book

    puts "Book added successfully!"
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
