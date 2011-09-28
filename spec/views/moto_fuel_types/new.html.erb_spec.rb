require 'spec_helper'

describe "moto_fuel_types/new.html.erb" do
  before(:each) do
    assign(:moto_fuel_type, stub_model(MotoFuelType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_fuel_types_path, :method => "post" do
      assert_select "input#moto_fuel_type_name", :name => "moto_fuel_type[name]"
    end
  end
end
