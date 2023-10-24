require_relative '../label' # Make sure to adjust the path if needed
require 'rspec'

describe Label do
  let(:label) { Label.new(1, 'Gift', 'Red') }

  it 'should add an item' do
    item = double('item')
    label.add_item(item)
    expect(label.items).to include(item)
  end

  it 'should remove an item' do
    item = double('item')
    label.add_item(item)
    label.remove_item(item)
    expect(label.items).to be_empty
  end
end
