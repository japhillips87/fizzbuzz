require 'rails_helper'

RSpec.describe "fizzbuzzs/edit", type: :view do
  before(:each) do
    @fizzbuzz = assign(:fizzbuzz, Fizzbuzz.create!())
  end

  it "renders the edit fizzbuzz form" do
    render

    assert_select "form[action=?][method=?]", fizzbuzz_path(@fizzbuzz), "post" do
    end
  end
end
