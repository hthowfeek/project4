require 'spec_helper'

describe "bookings/new" do
  before(:each) do
    assign(:booking, stub_model(Booking,
      :movie_id => 1,
      :showing_id => 1,
      :number_of_seats => 1,
      :customer_name => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path, :method => "post" do
      assert_select "input#booking_movie_id", :name => "booking[movie_id]"
      assert_select "input#booking_showing_id", :name => "booking[showing_id]"
      assert_select "input#booking_number_of_seats", :name => "booking[number_of_seats]"
      assert_select "input#booking_customer_name", :name => "booking[customer_name]"
      assert_select "input#booking_phone", :name => "booking[phone]"
      assert_select "input#booking_email", :name => "booking[email]"
    end
  end
end
