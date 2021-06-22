require 'rails_helper'

RSpec.feature 'Sign Up', type: :feature do 
  scenario 'a user can sign up' do 
    signup_and_login
    expect(page).to have_content 'You are Logged In, charlie@gmail.com'
  end 
end