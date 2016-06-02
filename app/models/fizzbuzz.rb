class Fizzbuzz < ActiveRecord::Base

  validates_uniqueness_of :number

  def value
    computed_value = ''
    computed_value += 'Fizz' if number % 3 == 0
    computed_value += 'Buzz' if number % 5 == 0
    computed_value
  end
end
