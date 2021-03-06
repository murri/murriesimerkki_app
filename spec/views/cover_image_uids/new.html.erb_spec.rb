require 'spec_helper'

describe "cover_image_uids/new.html.erb" do
  before(:each) do
    assign(:cover_image_uid, stub_model(CoverImageUid,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cover_image_uids_path, :method => "post" do
      assert_select "input#cover_image_uid_name", :name => "cover_image_uid[name]"
    end
  end
end
