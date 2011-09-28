require 'spec_helper'

describe "moto_drive_types/edit.html.erb" do
  before(:each) do
    @moto_drive_type = assign(:moto_drive_type, stub_model(MotoDriveType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_drive_types_path(@moto_drive_type), :method => "post" do
      assert_select "input#moto_drive_type_name", :name => "moto_drive_type[name]"
    end
  end
end
