# book.rb

require_relative 'item'  # Include the Item class defined in item.rb
class Book < Item
  attr_accessor :cover_state
  attr_reader :items  # Define the items attribute

  def initialize(id, first_name, last_name, cover_state)
    super(id, "Book", "#{first_name} #{last_name}", nil, nil, nil, false)
    @cover_state = cover_state
    @items = []  # Initialize @items as an empty array
  end

  def can_be_archived?
    super || @cover_state == "bad"
  end

  def add_item(item)
    @items << item
    item.label = self  # Use the setter method in the Item class
  end

  def remove_item(item)
    @items.delete(item)
    item.label = nil  
  end
end
