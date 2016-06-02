require 'rails_helper'

RSpec.describe "Fizzbuzzs", type: :request do
  describe "GET /fizzbuzzs" do
    it "works! (now write some real specs)" do
      get fizzbuzzs_path
      expect(response).to have_http_status(200)
    end
  end
end
