require "rails_helper"

RSpec.describe FizzbuzzsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fizzbuzzs").to route_to("fizzbuzzs#index")
    end

    it "routes to #new" do
      expect(:get => "/fizzbuzzs/new").to route_to("fizzbuzzs#new")
    end

    it "routes to #show" do
      expect(:get => "/fizzbuzzs/1").to route_to("fizzbuzzs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fizzbuzzs/1/edit").to route_to("fizzbuzzs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fizzbuzzs").to route_to("fizzbuzzs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fizzbuzzs/1").to route_to("fizzbuzzs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fizzbuzzs/1").to route_to("fizzbuzzs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fizzbuzzs/1").to route_to("fizzbuzzs#destroy", :id => "1")
    end

  end
end
