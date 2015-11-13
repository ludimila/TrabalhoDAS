require "rails_helper"

describe "Every page" do
  it "is customized" do
    ['/', '/404', '/animals'].each do |path|
      visit path
      expect(page).to have_content("Share a pet!")
      expect(page).to have_content("Find a pet!")
      expect(page).to have_content("Share Pet")

      expect(page).to have_content("Theme made by Materialize")
    end
  end
end
