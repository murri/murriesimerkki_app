require 'spec_helper'

describe "machine_fuel_types/new.html.erb" do
  before(:each) do
    assign(:machine_fuel_type, stub_model(MachineFuelType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_fuel_types_path, :method => "post" do
      assert_select "input#machine_fuel_type_name", :name => "machine_fuel_type[name]"
    end
  end
end
