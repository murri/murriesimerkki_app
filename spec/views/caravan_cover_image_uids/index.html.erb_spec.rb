require 'spec_helper'

describe "caravan_cover_image_uids/index.html.erb" do
  before(:each) do
    assign(:caravan_cover_image_uids, [
      stub_model(CaravanCoverImageUid,
        :name => "Name"
      ),
      stub_model(CaravanCoverImageUid,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_cover_image_uids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
