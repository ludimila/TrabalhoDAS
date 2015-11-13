require "rails_helper"


describe "Index page" do
  it "shows all pets" do
    visit '/animals'
    expect(page).to have_content("Pets Available")
  end
end

describe "Find a pet" do
  pet = FactoryGirl.create(:pet)
  it "named Bacon" do
    visit '/animals'
    print page.html
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
