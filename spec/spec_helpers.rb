require 'rails_helper'

def signup_and_login
  visit '/'
  click_link 'Sign Up'
  fill_in 'Username', with: 'charlie@gmail.com'
  fill_in 'Password', with: 'password'
  click_button 'Create User'
end