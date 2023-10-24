require_relative 'item' 
items = [
  Item.new(1, 'Mystery', 'Agatha Christie', 'Library', 'HarperCollins', Time.new(2010, 1, 15), false),
  Item.new(2, 'Science Fiction', 'Isaac Asimov', 'Bookstore', 'Penguin', Time.new(2005, 5, 20), false),
  # Add more items as needed
]

def print_options
  puts "Options:"
  puts "1. List Items"
  puts "2. Move an Item to Archive"
  puts "3. Quit"
end

loop do
  puts "Welcome to the Item Management App"
  print_options
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "List of Items:"
    items.each do |item|
      puts "Item ID: #{item.id}, Genre: #{item.genre}, Author: #{item.author}, Published Date: #{item.publish_date}, Archived: #{item.archived ? 'Yes' : 'No'}"
    end
  when 2
    puts "Enter the ID of the item to move to the archive:"
    item_id = gets.chomp.to_i
    item = items.find { |i| i.id == item_id }
    if item
      item.move_to_archive
      puts "Item with ID #{item_id} has been moved to the archive."
    else
      puts "Item not found with the given ID."
    end
  when 3
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
