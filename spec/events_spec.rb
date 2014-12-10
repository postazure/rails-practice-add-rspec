require "rails_helper"

feature "Events" do
  scenario "User edits an event" do
    Event.create!(description: "Max's Event")

    visit root_path
    click_on "edit"
    fill_in "Location", with: "Max's Event"
    click_on "Update Event"

    expect(page).to have_content("Max's Event")
  end


end
