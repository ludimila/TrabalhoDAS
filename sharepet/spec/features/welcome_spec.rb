require "rails_helper"

describe "Welcome page" do
  it "is customized" do
    visit '/'
    expect(page).to have_content("Have a pet to donate?")
  end
end
