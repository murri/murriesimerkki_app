require 'spec_helper'

describe "car_accelerations/new.html.erb" do
  before(:each) do
    assign(:car_acceleration, stub_model(CarAcceleration,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_acceleration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_accelerations_path, :method => "post" do
      assert_select "input#car_acceleration_name", :name => "car_acceleration[name]"
    end
  end
end
