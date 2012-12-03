require 'spec_helper'

describe "bookings/index" do
  before(:each) do
    assign(:bookings, [
      stub_model(Booking,
        :movie_id => 1,
        :showing_id => 2,
        :number_of_seats => 3,
        :customer_name => "Customer Name",
        :phone => "Phone",
        :email => "Email"
      ),
      stub_model(Booking,
        :movie_id => 1,
        :showing_id => 2,
        :number_of_seats => 3,
        :customer_name => "Customer Name",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
