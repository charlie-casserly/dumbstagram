feature 'rails_helper'

RSpec.feature 'Sign Up' do 
  scenario 'a user can sign up' do 
    visit '/'
    click_link 'Sign Up'
    fill_in 'Username', with: 'charlie@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Create User'

    expect(page).to have_content 'You are Logged In, charlie@gmail.com'
  end 
end