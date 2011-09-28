require 'spec_helper'

describe "car_cover_image_uids/index.html.erb" do
  before(:each) do
    assign(:car_cover_image_uids, [
      stub_model(CarCoverImageUid,
        :name => "Name"
      ),
      stub_model(CarCoverImageUid,
        :name => "Name"
      )
    ])
  end

  it "renders a list of car_cover_image_uids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
