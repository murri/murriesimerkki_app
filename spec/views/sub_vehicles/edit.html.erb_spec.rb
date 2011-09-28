require 'spec_helper'

describe "sub_vehicles/edit.html.erb" do
  before(:each) do
    @sub_vehicle = assign(:sub_vehicle, stub_model(SubVehicle,
      :name => "MyString",
      :vehicle_id => 1
    ))
  end

  it "renders the edit sub_vehicle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sub_vehicles_path(@sub_vehicle), :method => "post" do
      assert_select "input#sub_vehicle_name", :name => "sub_vehicle[name]"
      assert_select "input#sub_vehicle_vehicle_id", :name => "sub_vehicle[vehicle_id]"
    end
  end
end
