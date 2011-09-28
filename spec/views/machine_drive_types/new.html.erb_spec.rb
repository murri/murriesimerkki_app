require 'spec_helper'

describe "machine_drive_types/new.html.erb" do
  before(:each) do
    assign(:machine_drive_type, stub_model(MachineDriveType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_drive_types_path, :method => "post" do
      assert_select "input#machine_drive_type_name", :name => "machine_drive_type[name]"
    end
  end
end
