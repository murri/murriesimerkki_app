require 'spec_helper'

describe "machine_cover_image_uids/new.html.erb" do
  before(:each) do
    assign(:machine_cover_image_uid, stub_model(MachineCoverImageUid,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_cover_image_uids_path, :method => "post" do
      assert_select "input#machine_cover_image_uid_name", :name => "machine_cover_image_uid[name]"
    end
  end
end
