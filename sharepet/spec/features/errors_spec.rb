require "rails_helper"

describe "404 page" do
  it "is customized" do
    visit "/404"
    expect(page.status_code).to eq 404
    expect(page).to have_content("Got lost?")
  end
end
