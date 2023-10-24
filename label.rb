# label.rb

class Label
  attr_accessor :id, :title, :color
  attr_reader :items

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []  # Initialize an empty array to hold associated items
  end

  def add_item(item)
    @items << item
    item.label = self  # Add self as a property of the item object
  end

  def remove_item(item)
    @items.delete(item)
    item.label = nil  # Remove self as a property of the item object
  end
end
