require 'spec_helper'

describe "moto_fuel_types/edit.html.erb" do
  before(:each) do
    @moto_fuel_type = assign(:moto_fuel_type, stub_model(MotoFuelType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_fuel_types_path(@moto_fuel_type), :method => "post" do
      assert_select "input#moto_fuel_type_name", :name => "moto_fuel_type[name]"
    end
  end
end
