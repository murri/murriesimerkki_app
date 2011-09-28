require 'spec_helper'

describe "car_colors/show.html.erb" do
  before(:each) do
    @car_color = assign(:car_color, stub_model(CarColor,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
