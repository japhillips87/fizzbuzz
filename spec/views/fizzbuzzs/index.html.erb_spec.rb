require 'rails_helper'

RSpec.describe "fizzbuzzs/index", type: :view do
  before(:each) do
    assign(:fizzbuzzs, [
      Fizzbuzz.create!(),
      Fizzbuzz.create!()
    ])
  end

  it "renders a list of fizzbuzzs" do
    render
  end
end
