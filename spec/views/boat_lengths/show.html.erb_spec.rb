require 'spec_helper'

describe "boat_lengths/show.html.erb" do
  before(:each) do
    @boat_length = assign(:boat_length, stub_model(BoatLength,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
