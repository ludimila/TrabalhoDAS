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

  describe "Index page" do
    it "shows all pets" do
      visit '/animals'
      expect(page).to have_content("Pets")
      expect(page).to have_content("Share Pet")
    end
  end

  describe "Find a pet" do
    it "named Bacon" do
      visit '/animals'
      expect(page).to have_link('Bacon')
      expect(page).to have_content("Bacon")
    end
    it "which is a dog" do
      visit '/animals'
      visit '/animals?by_breed=cachorro'
      expect(page).to have_link("Batatinha")
    end
  end

describe "Index page" do
  it "shows all pets" do
    visit '/animals'
    expect(page).to have_content("Pets")
  end
end

describe "Find a pet" do
  pet = FactoryGirl.create(:pet)
  it "named Bacon" do
    visit '/animals'
    # expect(page).to find_button('Share One!')
    # expect(page).to find_link('search')
    # find_link('Bacon').visible?
    # expect(page).to have_content("Bacon")
  end
  it "which is a dog" do
    visit '/animals'
    visit '/animals?by_breed=cachorro'
    # expect(page).to have_button("Batatinha")
  end
end
