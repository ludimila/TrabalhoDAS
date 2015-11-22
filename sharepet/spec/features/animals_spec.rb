require "rails_helper"

RSpec.describe AnimalsController, type: :routing do
  describe "routing" do
    pet = FactoryGirl.create(:pet)
    pet = FactoryGirl.create(:dog)

    it "routes to #index" do
      expect(:get => "/animals").to route_to("animals#index")
    end

    it "routes to #new" do
      expect(:get => "/animals/new").to route_to("animals#new")
    end

    it "routes to #show" do
      expect(:get => "/animals/0").to route_to("animals#show", :id => "0")
    end

    it "routes to #edit" do
      expect(:get => "/animals/0/edit").to route_to("animals#edit", :id => "0")
    end

    it "routes to #create" do
      expect(:post => "/animals").to route_to("animals#create")
    end

    it "routes to #destroy" do
      expect(:delete => "/animals/0").to route_to("animals#destroy", :id => "0")
    end
  end
end