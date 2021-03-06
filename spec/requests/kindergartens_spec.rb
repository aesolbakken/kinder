require 'spec_helper'

describe "Kindergartens" do
  before (:each) do
    @user = User.create!(:first_name => 'Test', :last_name => 'Tester', :email => "test@jalla.com", :password => "tull12345", :password_confirmation => "tull12345")
    visit '/'
    within("#new_user") do
      fill_in 'user_email', :with => @user.email
      fill_in 'user_password', :with => @user.password
    end
    click_button 'Logg inn'
  end
  describe "GET /kindergartens" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get kindergartens_path
      response.status.should be(200)
    end
  end
end
