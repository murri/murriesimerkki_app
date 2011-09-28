require 'spec_helper'

describe "drive_types/edit.html.erb" do
  before(:each) do
    @drive_type = assign(:drive_type, stub_model(DriveType,
      :name => "MyString"
    ))
  end

  it "renders the edit drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drive_types_path(@drive_type), :method => "post" do
      assert_select "input#drive_type_name", :name => "drive_type[name]"
    end
  end
end
