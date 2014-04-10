require 'spec_helper'
require 'capybara/rspec'
require_relative'../app'
Capybara.app = App

feature "User can manage tasks" do
  scenario "User can add a task to the homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
  end
end