# book.rb

class Book
  attr_accessor :id, :first_name, :last_name
  attr_reader :items

  def initialize(id, first_name, last_name)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []  # Initialize an empty array to hold associated items
  end

  def add_item(item)
    @items << item
  end

  def remove_item(item)
    @items.delete(item)
  end

  def can_be_archived?
    if super || @cover_state == "bad"
      return true
    else
      return false
    end
  end
end
