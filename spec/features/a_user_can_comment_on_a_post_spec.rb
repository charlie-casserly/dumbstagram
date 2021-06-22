require 'rails helper'

RSpec.feature 'Comments', type: :feature do 
  scenario 'users can post comments on photos' do 
    signup_and_login
    upload_photo

    click_link('Comment')
    fill_in('Comment', with: 'Test comment')
    click_button('Submit')

    expect(page).to have_link('1 Comment')
  end
end