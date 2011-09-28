require 'spec_helper'

describe "car_drive_types/edit.html.erb" do
  before(:each) do
    @car_drive_type = assign(:car_drive_type, stub_model(CarDriveType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_drive_types_path(@car_drive_type), :method => "post" do
      assert_select "input#car_drive_type_name", :name => "car_drive_type[name]"
    end
  end
end
