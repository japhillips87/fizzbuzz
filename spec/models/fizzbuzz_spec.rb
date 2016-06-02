require 'rails_helper'

RSpec.describe Fizzbuzz, type: :model do
  describe 'validations' do
    it 'validates uniqueness of number' do
      Fizzbuzz.create number: 1
      invalid = Fizzbuzz.new number: 1
      expect(invalid).not_to be_valid
    end
  end
end
