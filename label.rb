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
  end

  def remove_item(item)
    @items.delete(item)
  end
end
