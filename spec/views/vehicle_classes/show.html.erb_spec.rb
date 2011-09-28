require 'spec_helper'

describe "vehicle_classes/show.html.erb" do
  before(:each) do
    @vehicle_class = assign(:vehicle_class, stub_model(VehicleClass,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
