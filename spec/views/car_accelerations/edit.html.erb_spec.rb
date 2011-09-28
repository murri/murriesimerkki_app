require 'spec_helper'

describe "car_accelerations/edit.html.erb" do
  before(:each) do
    @car_acceleration = assign(:car_acceleration, stub_model(CarAcceleration,
      :name => "MyString"
    ))
  end

  it "renders the edit car_acceleration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_accelerations_path(@car_acceleration), :method => "post" do
      assert_select "input#car_acceleration_name", :name => "car_acceleration[name]"
    end
  end
end
