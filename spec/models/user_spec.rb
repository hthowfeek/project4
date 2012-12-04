require 'spec_helper'

describe User do

  describe "Validation Macros" do
      it {should validate_presence_of(:email)} 
  end
  
  describe "validates good emails" do
    it {should allow_value("fred@fred.com").for(:email)}
    it {should allow_value("fred@qatar.cmu.edu").for(:email)}
    it {should allow_value("myfred@fred.org").for(:email)}
    it {should allow_value("fred123@fred.gov").for(:email)}
    it {should allow_value("my.fred@fred.net").for(:email)}
  end

  describe "validates bad emails" do
    it {should_not allow_value("fred").for(:email)}
    it {should_not allow_value("fred@qatar,com").for(:email)}
    it {should_not allow_value("fred@fred.uk").for(:email)}
    it {should_not allow_value("my fred123@fred.com").for(:email)}
    it {should_not allow_value("fred@fred.con").for(:email)}
  end

end
