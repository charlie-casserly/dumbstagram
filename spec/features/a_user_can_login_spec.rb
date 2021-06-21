require 'rails_helper'

RSpec.feature "Authentication", type: :feature do 
  scenario 'A signed up user can log in' do
    User.create(username: 'charlie@gmail.com', password: 'password')
    
    visit('/')
    click_link('Login')
    fill_in('Username', with: 'charlie@gmail.com')
    fill_in('Password', with: 'password')
    click_button 'Login'

    expect(page).to have_content 'You are Logged In, charlie@gmail.com'
  end
end