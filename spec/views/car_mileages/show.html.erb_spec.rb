require 'spec_helper'

describe "car_mileages/show.html.erb" do
  before(:each) do
    @car_mileage = assign(:car_mileage, stub_model(CarMileage,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
