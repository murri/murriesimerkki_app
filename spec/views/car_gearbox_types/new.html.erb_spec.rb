require 'spec_helper'

describe "car_gearbox_types/new.html.erb" do
  before(:each) do
    assign(:car_gearbox_type, stub_model(CarGearboxType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_gearbox_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_gearbox_types_path, :method => "post" do
      assert_select "input#car_gearbox_type_name", :name => "car_gearbox_type[name]"
    end
  end
end
