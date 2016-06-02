require 'rails_helper'

RSpec.describe Fizzbuzz, type: :model do
  describe 'validations' do
    it 'validates uniqueness of number' do
      Fizzbuzz.create number: 1
      invalid = Fizzbuzz.new number: 1
      expect(invalid).not_to be_valid
    end
  end

  describe '#value' do
    it 'returns fizz when number is a multiple of 3' do
      fizzbuzz = Fizzbuzz.new number: 3
      expect(fizzbuzz.value).to eq 'Fizz'
    end

    it 'returns buzz when number is a multiple of 5' do
      fizzbuzz = Fizzbuzz.new number: 5
      expect(fizzbuzz.value).to eq 'Buzz'
    end

    it 'returns nothing when a number is not a multiple of 3 or 5' do
      fizzbuzz = Fizzbuzz.new number: 4
      expect(fizzbuzz.value).to eq ''
    end

    it 'returns FizzBuzz when a number is a multiple of 3 and 5' do
      fizzbuzz = Fizzbuzz.new number: 15
      expect(fizzbuzz.value).to eq 'FizzBuzz'
    end
  end
end
