require 'spec_helper'

describe "boat_user_phones/index.html.erb" do
  before(:each) do
    assign(:boat_user_phones, [
      stub_model(BoatUserPhone,
        :name => "Name"
      ),
      stub_model(BoatUserPhone,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_user_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
