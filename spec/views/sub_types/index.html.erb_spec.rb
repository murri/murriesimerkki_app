require 'spec_helper'

describe "sub_types/index.html.erb" do
  before(:each) do
    assign(:sub_types, [
      stub_model(SubType,
        :name => "Name",
        :type_id => 1
      ),
      stub_model(SubType,
        :name => "Name",
        :type_id => 1
      )
    ])
  end

  it "renders a list of sub_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
