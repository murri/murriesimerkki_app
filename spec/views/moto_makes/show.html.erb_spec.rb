require 'spec_helper'

describe "moto_makes/show.html.erb" do
  before(:each) do
    @moto_make = assign(:moto_make, stub_model(MotoMake,
      :name => "Name",
      :sub_vehicle_id => 1
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
