require 'spec_helper'

describe "caravan_mileages/show.html.erb" do
  before(:each) do
    @caravan_mileage = assign(:caravan_mileage, stub_model(CaravanMileage,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
