require 'rails_helper'

RSpec.feature "Create a new restaurant", js: true do
  # user visits the index page
  # user clicks on the Add Restaurant button
  # user fills in the new restaurant form
  # user clicks on the create restaurant button
  # user is redirect to the index page
  # user should see flash message

  scenario "user creates a restaurant with valid inputs" do
    visit "/"
    click_link "Add Restaurant"
    save_and_open_page
    fill_in "Name", with: "My Restaurant"
    fill_in "Address", with: "123 Penny Lane"
    fill_in "Zip Code", with: "12345"
    click_button "Create Restaurant"
    expect(current_path).to eq root_path
    expect(page).to have_content "Successfully added a new restaurant."
  end
end