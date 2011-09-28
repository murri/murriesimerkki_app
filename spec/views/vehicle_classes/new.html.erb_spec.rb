require 'spec_helper'

describe "vehicle_classes/new.html.erb" do
  before(:each) do
    assign(:vehicle_class, stub_model(VehicleClass,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new vehicle_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicle_classes_path, :method => "post" do
      assert_select "input#vehicle_class_name", :name => "vehicle_class[name]"
    end
  end
end
