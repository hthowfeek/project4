require 'spec_helper'

describe "showings/show" do
  before(:each) do
    @showing = assign(:showing, stub_model(Showing,
      :movie_id => 1,
      :number_of_available_seats => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
