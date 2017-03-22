require 'rails_helper'

describe Painscore, type: :model do
  it 'is not valid without a date' do
    painscore = Painscore.new(score: 9)
    expect(painscore).to have(1).error_on(:customdate)
    expect(painscore).not_to be_valid
  end
  it 'is not valid without a score' do
    painscore = Painscore.new(customdate: '2017-06-06')
    expect(painscore).to have(1).error_on(:score)
    expect(painscore).not_to be_valid
  end
end
