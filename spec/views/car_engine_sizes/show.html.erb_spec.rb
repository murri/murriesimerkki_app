require 'spec_helper'

describe "car_engine_sizes/show.html.erb" do
  before(:each) do
    @car_engine_size = assign(:car_engine_size, stub_model(CarEngineSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
