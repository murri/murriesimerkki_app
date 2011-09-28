require 'spec_helper'

describe "boat_cover_image_uids/new.html.erb" do
  before(:each) do
    assign(:boat_cover_image_uid, stub_model(BoatCoverImageUid,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_cover_image_uids_path, :method => "post" do
      assert_select "input#boat_cover_image_uid_name", :name => "boat_cover_image_uid[name]"
    end
  end
end
