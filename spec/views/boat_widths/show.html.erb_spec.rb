require 'spec_helper'

describe "boat_widths/show.html.erb" do
  before(:each) do
    @boat_width = assign(:boat_width, stub_model(BoatWidth,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
