require 'spec_helper'

describe "car_gearbox_types/edit.html.erb" do
  before(:each) do
    @car_gearbox_type = assign(:car_gearbox_type, stub_model(CarGearboxType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_gearbox_types_path(@car_gearbox_type), :method => "post" do
      assert_select "input#car_gearbox_type_name", :name => "car_gearbox_type[name]"
    end
  end
end
