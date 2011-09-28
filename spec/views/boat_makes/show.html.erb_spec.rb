require 'spec_helper'

describe "boat_makes/show.html.erb" do
  before(:each) do
    @boat_make = assign(:boat_make, stub_model(BoatMake,
      :name => "Name",
      :boat_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
