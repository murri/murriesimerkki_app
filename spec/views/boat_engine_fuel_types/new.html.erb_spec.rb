require 'spec_helper'

describe "boat_engine_fuel_types/new.html.erb" do
  before(:each) do
    assign(:boat_engine_fuel_type, stub_model(BoatEngineFuelType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_engine_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_engine_fuel_types_path, :method => "post" do
      assert_select "input#boat_engine_fuel_type_name", :name => "boat_engine_fuel_type[name]"
    end
  end
end
