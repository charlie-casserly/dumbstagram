require 'rails_helper'

RSpec.describe User, type: :model do 
  subject {
    described_class.new(
      username: "charlie@gmail.com",
      password: "password"
    )
  }
  
  it 'is invalid without attributes' do 
    expect(User.new).to_not be_valid
  end

  it 'is invalid with blank password' do 
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'is invalid with a blank user' do 
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end 
end
