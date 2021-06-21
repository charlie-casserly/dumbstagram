require 'rails_helper'
require 'spec_helpers'

RSpec.feature 'Logout' do 
  scenario 'a signed in user can log out' do 
    signup_and_login

    expect(page).to have_link 'Logout'
    
    click_link 'Logout'

    expect(page).not_to have_link 'Logout'
  end
end