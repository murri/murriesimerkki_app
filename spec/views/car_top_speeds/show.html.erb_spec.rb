require 'spec_helper'

describe "car_top_speeds/show.html.erb" do
  before(:each) do
    @car_top_speed = assign(:car_top_speed, stub_model(CarTopSpeed,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
