require 'rails_helper'

RSpec.feature 'Like Posts', type: :feature do 
  scenario 'a post defaults with 0 likes' do 
    signup_and_login
    upload_photo

    expect(page).to have_content('0 likes')
  end

  scenario 'a user can click the like link and the like counter increases' do
    signup_and_login
    upload_photo

    click_link('0 likes')
    expect(page).to have_content('1 likes')
  end
end