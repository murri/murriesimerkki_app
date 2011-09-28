require 'spec_helper'

describe "moto_drive_types/new.html.erb" do
  before(:each) do
    assign(:moto_drive_type, stub_model(MotoDriveType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_drive_types_path, :method => "post" do
      assert_select "input#moto_drive_type_name", :name => "moto_drive_type[name]"
    end
  end
end
