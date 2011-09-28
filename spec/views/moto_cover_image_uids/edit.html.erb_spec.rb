require 'spec_helper'

describe "moto_cover_image_uids/edit.html.erb" do
  before(:each) do
    @moto_cover_image_uid = assign(:moto_cover_image_uid, stub_model(MotoCoverImageUid,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_cover_image_uids_path(@moto_cover_image_uid), :method => "post" do
      assert_select "input#moto_cover_image_uid_name", :name => "moto_cover_image_uid[name]"
    end
  end
end
