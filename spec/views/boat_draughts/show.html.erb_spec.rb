require 'spec_helper'

describe "boat_draughts/show.html.erb" do
  before(:each) do
    @boat_draught = assign(:boat_draught, stub_model(BoatDraught,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
