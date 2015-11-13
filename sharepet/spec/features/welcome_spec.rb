require "rails_helper"

describe "Welcome page" do
  it "is customized" do
    visit '/'
    expect(page).to have_content("Have a pet to donate?")
    expect(page).to have_content("Share Here!")
    expect(page).to have_content("Find one!")
  end
end
