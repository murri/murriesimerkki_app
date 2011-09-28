require 'spec_helper'

describe "boat_cover_image_uids/edit.html.erb" do
  before(:each) do
    @boat_cover_image_uid = assign(:boat_cover_image_uid, stub_model(BoatCoverImageUid,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_cover_image_uids_path(@boat_cover_image_uid), :method => "post" do
      assert_select "input#boat_cover_image_uid_name", :name => "boat_cover_image_uid[name]"
    end
  end
end
