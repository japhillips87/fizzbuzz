class Fizzbuzz < ActiveRecord::Base

  validates_uniqueness_of :number
end
