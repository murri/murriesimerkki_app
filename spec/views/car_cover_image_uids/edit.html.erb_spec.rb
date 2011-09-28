require 'spec_helper'

describe "car_cover_image_uids/edit.html.erb" do
  before(:each) do
    @car_cover_image_uid = assign(:car_cover_image_uid, stub_model(CarCoverImageUid,
      :name => "MyString"
    ))
  end

  it "renders the edit car_cover_image_uid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_cover_image_uids_path(@car_cover_image_uid), :method => "post" do
      assert_select "input#car_cover_image_uid_name", :name => "car_cover_image_uid[name]"
    end
  end
end
