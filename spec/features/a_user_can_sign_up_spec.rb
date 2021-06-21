require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario 'can create an account' do 
    visit('/')
    click_link 'Sign up'
    fill_in('email', with: 'charlie@gmail.com')
    fill_in('password', with: 'password')
    click_button 'Submit'
    
    expect(page).to have_content 'Thank you'
  end
end