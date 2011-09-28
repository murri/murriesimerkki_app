require 'spec_helper'

describe "total_owners/index.html.erb" do
  before(:each) do
    assign(:total_owners, [
      stub_model(TotalOwner,
        :name => "Name"
      ),
      stub_model(TotalOwner,
        :name => "Name"
      )
    ])
  end

  it "renders a list of total_owners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
