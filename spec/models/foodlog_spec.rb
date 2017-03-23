require 'rails_helper'

describe Foodlog, type: :model do
  it 'is not valid without a food name entry' do
    foodlog = Foodlog.new(customdate: '2017-06-06')
    expect(foodlog).to have(1).error_on(:food)
    expect(foodlog).not_to be_valid
  end
end
