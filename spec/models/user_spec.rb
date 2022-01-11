require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'validation' do
    
    before (:each) do

    @user = User.create!(first_name: 'Homer', last_name: 'Simpson', email: 'hsimpson@yahoo.com', password: 'tooyoungtodie', password_confirmation: 'toodrunktolive')

   end
   

 it "should have one password and a password confirmation" do
  expect (@user).to be_valid
 end

 it "should have a password longer than 2 characters" do
   expect(@user).to be_valid
 end

 describe 'Email' do 
 it "should be unique"
 end

 
 it "should include email" do
   expect(@user).to be_valid
 end

 it "should include first_name" do
  expect(@user).to be_valid
 end

 it "should include last_name" do
  expect(@user).to be_valid
 end

 it "should match the password confirmation" do
  expect(user.password).to eq 'tooyoungtodie'
 end
end
end
