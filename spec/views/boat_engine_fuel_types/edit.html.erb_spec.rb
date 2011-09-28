require 'spec_helper'

describe "boat_engine_fuel_types/edit.html.erb" do
  before(:each) do
    @boat_engine_fuel_type = assign(:boat_engine_fuel_type, stub_model(BoatEngineFuelType,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_engine_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_engine_fuel_types_path(@boat_engine_fuel_type), :method => "post" do
      assert_select "input#boat_engine_fuel_type_name", :name => "boat_engine_fuel_type[name]"
    end
  end
end
