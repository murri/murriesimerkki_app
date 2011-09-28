require 'spec_helper'

describe "machine_cover_image_uids/edit.html.erb" do
  before(:each) do
    @machine_cover_image_uid = assign(:machine_cover_image_uid, stub_model(MachineCoverImageUid,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_cover_image_uids_path(@machine_cover_image_uid), :method => "post" do
      assert_select "input#machine_cover_image_uid_name", :name => "machine_cover_image_uid[name]"
    end
  end
end
