require 'rails_helper'

RSpec.feature "Visit todo list" do
  scenario "User visits page" do
    visit '/'
    expect(page).to have_content('Todo Lists')
  end

  scenario "User add task" do
    visit '/'
    click_link "New Todo List"
    fill_in "Task", with: "Drink Solo soft drink"
    click_button "Create Todo list"

    expect(page).to have_content("Todo list was successfully created.")
    expect(page).to have_content("Task: Drink Solo soft drink")
  end
end