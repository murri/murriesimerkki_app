require 'spec_helper'

describe "vehicles/show.html.erb" do
  before(:each) do
    @vehicle = assign(:vehicle, stub_model(Vehicle,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
