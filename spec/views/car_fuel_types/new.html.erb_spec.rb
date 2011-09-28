require 'spec_helper'

describe "car_fuel_types/new.html.erb" do
  before(:each) do
    assign(:car_fuel_type, stub_model(CarFuelType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_fuel_types_path, :method => "post" do
      assert_select "input#car_fuel_type_name", :name => "car_fuel_type[name]"
    end
  end
end
