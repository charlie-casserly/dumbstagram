require 'rails_helper'

RSpec.feature 'Upload Photo', type: :feature do 
  scenario 'a user can upload a photo and it appears on the feed' do
    signup_and_login

    visit('/')
    click_button 'New Post'
    fill_in 'Caption', with: 'butterfly'
    attach_file 'Image', "spec/files/3000.jpeg"
    click_button 'Create Post'

    expect(page).to have_content 'butterfly'
    expect(page).to have_css("img[src*='3000.jpeg']")
  end
end