require 'rails_helper'

RSpec.describe "fizzbuzzs/show", type: :view do
  before(:each) do
    @fizzbuzz = assign(:fizzbuzz, Fizzbuzz.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
