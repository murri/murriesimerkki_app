require 'spec_helper'

describe "car_top_speeds/new.html.erb" do
  before(:each) do
    assign(:car_top_speed, stub_model(CarTopSpeed,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_top_speed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_top_speeds_path, :method => "post" do
      assert_select "input#car_top_speed_name", :name => "car_top_speed[name]"
    end
  end
end
