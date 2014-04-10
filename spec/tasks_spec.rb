require 'spec_helper'
require 'capybara/rspec'
require_relative'../app'
Capybara.app = App

feature "User can manage tasks" do
  scenario "User can add a task to the homepage" do
    visit '/'

    within("h3") do
      expect(page).to have_content("Welcome")
    end
    click_on "Add a Task"
    fill_in "task", with: "Study"
    click_on "Create Task"
    expect(page).to have_content("Study")
  end
end