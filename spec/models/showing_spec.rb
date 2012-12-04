require 'spec_helper'

describe Showing do
   before(:each) do
     @movie = FactoryGirl.create(:movie)
    @showing = FactoryGirl.create(:showing)
   end
   
   describe "associations " do 
     it "should have correct assoisications" do 
       should belong_to(:movie)
     end
  end
  
  describe "valid factories" do
  it "should create valid MovieShow factory" do
     @showing.should be_valid
    end
  end
  
  describe "validation"
    it "should validate the presence" do
    should validate_presence_of :number_of_available_seats
    should validate_presence_of :showing_time
    end
  end


