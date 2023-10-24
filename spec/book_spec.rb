require_relative '../book' # Make sure to adjust the path if needed
require 'rspec'
RSpec.describe Book do
  context '#initialize' do
    it 'should set the author first name and the author last name' do
      book = Book.new(1, 'John', 'Doe', 'good')

      expect(book.author).to eq('John Doe')
    end

    it 'should set the cover state' do
      book = Book.new(1, 'John', 'Doe', 'good')

      expect(book.cover_state).to eq('good')
    end
  end
  
  context '#can_be_archived?' do
    it 'should return true if the cover state is bad' do
      book = Book.new(1, 'John', 'Doe', 'bad')

      expect(book.can_be_archived?).to eq(true)
    end

    it 'should return false if the cover state is good' do
      book = Book.new(1, 'John', 'Doe', 'good')

      expect(book.can_be_archived?).to eq(false)
    end
  end

  context '#add_item' do
    it 'should add an item to the items array' do
      book = Book.new(1, 'John', 'Doe', 'good')
      item = Item.new(1, 'book', 'John Doe', nil, nil, nil, false)
      
      book.add_item(item)

      expect(book.items).to include(item)
    end
    
    it 'should set the item label to the book' do
      book = Book.new(1, 'John', 'Doe', 'good')
      item = Item.new(1, 'book', 'John Doe', nil, nil, nil, false)
      
      book.add_item(item)

      expect(item.label).to eq(book)
    end
  end

  context '#remove_item' do
    it 'should remove the item from the items array' do
      book = Book.new(1, 'John', 'Doe', 'good')
      item = Item.new(1, 'book', 'John Doe', nil, nil, nil, false)
      book.add_item(item)
      
      book.remove_item(item)

      expect(book.items).not_to include(item)
    end
    
    it 'should set the item label to nil' do
      book = Book.new(1, 'John', 'Doe', 'good')
      item = Item.new(1, 'book', 'John Doe', nil, nil, nil, false)
      book.add_item(item)
      
      book.remove_item(item)

      expect(item.label).to be_nil
    end
  end
end
