require 'spec_helper'

describe "fuel_types/edit.html.erb" do
  before(:each) do
    @fuel_type = assign(:fuel_type, stub_model(FuelType,
      :name => "MyString"
    ))
  end

  it "renders the edit fuel_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fuel_types_path(@fuel_type), :method => "post" do
      assert_select "input#fuel_type_name", :name => "fuel_type[name]"
    end
  end
end
