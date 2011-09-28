require 'spec_helper'

describe "boat_colors/show.html.erb" do
  before(:each) do
    @boat_color = assign(:boat_color, stub_model(BoatColor,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
