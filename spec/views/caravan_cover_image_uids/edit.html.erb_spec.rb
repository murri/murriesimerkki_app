require 'spec_helper'

describe "caravan_cover_image_uids/edit.html.erb" do
  before(:each) do
    @caravan_cover_image_uid = assign(:caravan_cover_image_uid, stub_model(CaravanCoverImageUid,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_cover_image_uids_path(@caravan_cover_image_uid), :method => "post" do
      assert_select "input#caravan_cover_image_uid_name", :name => "caravan_cover_image_uid[name]"
    end
  end
end
