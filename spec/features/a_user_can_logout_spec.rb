require 'rails_helper'

RSpec.feature 'Logout' do 
  scenario 'a signed in user can log out' do 
    User.create(username: 'charlie@gmail.com', password: 'password')

    visit('/')

    expect(page).not_to have_link 'Logout'

    click_link 'Login'
    fill_in 'Username', with: 'charlie@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Login'

    expect(page).to have_link 'Logout'
    
    click_link 'Logout'

    expect(page).not_to have_link 'Logout'
  end
end