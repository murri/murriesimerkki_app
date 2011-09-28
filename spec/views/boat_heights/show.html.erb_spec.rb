require 'spec_helper'

describe "boat_heights/show.html.erb" do
  before(:each) do
    @boat_height = assign(:boat_height, stub_model(BoatHeight,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
