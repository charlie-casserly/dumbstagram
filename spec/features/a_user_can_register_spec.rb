require 'rails_helper'
require 'spec_helpers'

RSpec.feature 'Sign Up' do 
  scenario 'a user can sign up' do 
    signup_and_login
    expect(page).to have_content 'You are Logged In, charlie@gmail.com'
  end 
end