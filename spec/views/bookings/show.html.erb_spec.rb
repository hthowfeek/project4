require 'spec_helper'

describe "bookings/show" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :movie_id => 1,
      :showing_id => 2,
      :number_of_seats => 3,
      :customer_name => "Customer Name",
      :phone => "Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Customer Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
  end
end
