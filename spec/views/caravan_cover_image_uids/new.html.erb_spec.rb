require 'spec_helper'

describe "caravan_cover_image_uids/new.html.erb" do
  before(:each) do
    assign(:caravan_cover_image_uid, stub_model(CaravanCoverImageUid,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_cover_image_uids_path, :method => "post" do
      assert_select "input#caravan_cover_image_uid_name", :name => "caravan_cover_image_uid[name]"
    end
  end
end
