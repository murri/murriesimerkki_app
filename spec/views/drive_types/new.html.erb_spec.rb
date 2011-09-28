require 'spec_helper'

describe "drive_types/new.html.erb" do
  before(:each) do
    assign(:drive_type, stub_model(DriveType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new drive_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drive_types_path, :method => "post" do
      assert_select "input#drive_type_name", :name => "drive_type[name]"
    end
  end
end
