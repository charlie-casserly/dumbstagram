require 'rails_helper'

RSpec.feature 'Upload Photo', type: :feature do 
  scenario 'a user can upload a photo and it appears on the feed' do
    signup_and_login
    upload_photo

    expect(page).to have_content 'butterfly'
    expect(page).to have_css("img[src*='3000.jpeg']")
  end
end