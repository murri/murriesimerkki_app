require 'spec_helper'

describe "machine_fuel_types/edit.html.erb" do
  before(:each) do
    @machine_fuel_type = assign(:machine_fuel_type, stub_model(MachineFuelType,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_fuel_types_path(@machine_fuel_type), :method => "post" do
      assert_select "input#machine_fuel_type_name", :name => "machine_fuel_type[name]"
    end
  end
end
