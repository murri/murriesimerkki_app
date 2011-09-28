require 'spec_helper'

describe "car_color_types/show.html.erb" do
  before(:each) do
    @car_color_type = assign(:car_color_type, stub_model(CarColorType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
