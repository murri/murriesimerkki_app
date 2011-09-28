require 'spec_helper'

describe "machine_drive_types/edit.html.erb" do
  before(:each) do
    @machine_drive_type = assign(:machine_drive_type, stub_model(MachineDriveType,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_drive_types_path(@machine_drive_type), :method => "post" do
      assert_select "input#machine_drive_type_name", :name => "machine_drive_type[name]"
    end
  end
end
