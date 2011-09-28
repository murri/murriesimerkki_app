require 'spec_helper'

describe "caravan_user_names/index.html.erb" do
  before(:each) do
    assign(:caravan_user_names, [
      stub_model(CaravanUserName,
        :name => "Name"
      ),
      stub_model(CaravanUserName,
        :name => "Name"
      )
    ])
  end

  it "renders a list of caravan_user_names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
