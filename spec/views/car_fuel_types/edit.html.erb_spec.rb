require 'spec_helper'

describe "car_fuel_types/edit.html.erb" do
  before(:each) do
    @car_fuel_type = assign(:car_fuel_type, stub_model(CarFuelType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_fuel_types_path(@car_fuel_type), :method => "post" do
      assert_select "input#car_fuel_type_name", :name => "car_fuel_type[name]"
    end
  end
end
