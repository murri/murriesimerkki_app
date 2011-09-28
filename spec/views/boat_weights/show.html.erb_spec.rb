require 'spec_helper'

describe "boat_weights/show.html.erb" do
  before(:each) do
    @boat_weight = assign(:boat_weight, stub_model(BoatWeight,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
