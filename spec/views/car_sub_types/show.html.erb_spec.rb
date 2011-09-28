require 'spec_helper'

describe "car_sub_types/show.html.erb" do
  before(:each) do
    @car_sub_type = assign(:car_sub_type, stub_model(CarSubType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
