require 'spec_helper'

describe "car_top_speeds/edit.html.erb" do
  before(:each) do
    @car_top_speed = assign(:car_top_speed, stub_model(CarTopSpeed,
      :name => "MyString"
    ))
  end

  it "renders the edit car_top_speed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_top_speeds_path(@car_top_speed), :method => "post" do
      assert_select "input#car_top_speed_name", :name => "car_top_speed[name]"
    end
  end
end
