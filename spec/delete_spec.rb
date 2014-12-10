require "rails_helper"

feature "Delete" do
  scenario "User can delete an event" do
    Event.create!(description: "Max's Event")

    visit root_path
    save_and_open_page
    click_on "delete"
    
    expect(page).to have_no_content("Max's Event")
  end
end
