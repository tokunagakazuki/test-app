require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'name存在し,textが5文字以上存在する時保存される' do
    item = Item.new(name: 'name', text: '12345')
    expect(item).to be_valid
  end
  it 'nameが存在しないので保存されない' do
    item = Item.new(text: '12345')
    expect(item).not_to be_valid
  end
  it 'textが存在しないので保存されない' do
    item = Item.new(name: 'name')
    expect(item).not_to be_valid
  end
  it 'textが５文字未満なので保存されない' do
    item = Item.new(name: 'name', text: '1234')
    expect(item).not_to be_valid
  end
end