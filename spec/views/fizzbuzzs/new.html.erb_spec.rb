require 'rails_helper'

RSpec.describe "fizzbuzzs/new", type: :view do
  before(:each) do
    assign(:fizzbuzz, Fizzbuzz.new())
  end

  it "renders new fizzbuzz form" do
    render

    assert_select "form[action=?][method=?]", fizzbuzzs_path, "post" do
    end
  end
end
