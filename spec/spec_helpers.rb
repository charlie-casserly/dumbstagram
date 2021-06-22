require 'rails_helper'

def signup_and_login
  visit '/'
  click_link 'Sign Up'
  fill_in 'Username', with: 'charlie@gmail.com'
  fill_in 'Password', with: 'password'
  click_button 'Create User'
end

def upload_photo
  click_button 'New Post'
  fill_in 'Caption', with: 'butterfly'
  attach_file 'Image', "spec/files/3000.jpeg"
  click_button 'Create Post'
end