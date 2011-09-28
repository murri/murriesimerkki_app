require 'spec_helper'

describe "car_accelerations/show.html.erb" do
  before(:each) do
    @car_acceleration = assign(:car_acceleration, stub_model(CarAcceleration,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
