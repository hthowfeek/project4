require 'spec_helper'

describe Booking do
  it{validate_presence_of(:customer_name)}
  it {validate_presence_of :email}
  it {validate_presence_of :phone}
  
  describe "factroy creation" do 
    it "should create valid objects" do 
     b = FactoryGirl.create(:booking)
     b.should be_valid 
    end
  end
  describe "validates good emails" do 
    it {should allow_value("zuhair.ghalib@gmail.com").for(:email)}
    it {should allow_value("zuhair.ghalib@gmail.qa").for(:email)}
  end
  describe "rejects bad emails" do 
    it {should_not allow_value("das.sad@gmail,com").for(:email)}
    it {should_not allow_value("das.sad@gmail.p").for(:email)}
    it {should_not allow_value("dasd.com").for(:email)}
    it {should_not allow_value("@gmail.com").for(:email)}
  end
  describe "seats validations"
   it "should validate numericality of # of seats" do 
      should validate_numericality_of(:number_of_seats).only_integer
    end
  
    it "should allow valid numbers" do 
      should allow_value(1).for(:number_of_seats)
      should allow_value(19).for(:number_of_seats)
      should allow_value(60).for(:number_of_seats)
    end
    it "should not allow invalid numbers" do 
      should_not allow_value(0).for(:number_of_seats)
      should_not allow_value(-2).for(:number_of_seats)
      should_not allow_value(3.232).for(:number_of_seats)
      should_not allow_value(-2.322).for(:number_of_seats)
      should_not allow_value(61).for(:number_of_seats)
    end
end
