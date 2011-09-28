require 'spec_helper'

describe "cover_image_uids/index.html.erb" do
  before(:each) do
    assign(:cover_image_uids, [
      stub_model(CoverImageUid,
        :name => "Name"
      ),
      stub_model(CoverImageUid,
        :name => "Name"
      )
    ])
  end

  it "renders a list of cover_image_uids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
