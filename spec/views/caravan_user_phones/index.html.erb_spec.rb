require 'spec_helper'

describe "caravan_user_phones/index.html.erb" do
  before(:each) do
    assign(:caravan_user_phones, [
      stub_model(CaravanUserPhone,
        :name => "Name"
      ),
      stub_model(CaravanUserPhone,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_user_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
