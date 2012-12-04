require 'spec_helper'
include Capybara::DSL

describe "Users" do
  
  describe "signup" do

    describe "failure" do
      it "should not make a new user" do
        lambda do
          visit new_user_path
          fill_in "Email",        :with => ""
         # fill_in "Password",     :with => ""
          fill_in "Password confirmation", :with => ""
          click_button "Create User"
          current_path.should == users_path
          page.should have_selector('div#error_messages')
        end.should_not change(User, :count)
      end
    end

    describe "success" do
      it "should make a new user" do
        lambda do
          visit new_user_path
          fill_in "Email",        :with => "user@example.com"
          fill_in "Password",     :with => "foobar"
          fill_in "Password confirmation", :with => "foobar"
          click_button "Create User"
          response.should render_template('users/show')
        end
      end
    end
  end

  describe "signin" do
    
    describe "failure" do
      it "should not sign a user in" do
        visit log_in_path
        fill_in "Email",    :with => ""
        fill_in "Password", :with => ""
        click_button "Log in"
        current_path.should == session_path
      end
    end
    
    describe "success" do
      before (:each) do
      @user = FactoryGirl.create(:user)
      end
      it "should sign a user in and out" do
        visit log_in_path
        fill_in "Email",    :with => @user.email
        fill_in "Password", :with => @user.password
        click_button "Log in"
      end
    end
  end
end
