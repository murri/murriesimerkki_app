require 'spec_helper'

describe "menus/index.html.erb" do
  before(:each) do
    assign(:menus, [
      stub_model(Menu,
        :name => "Name",
        :type_id => 1,
        :sub_type_id => 1
      ),
      stub_model(Menu,
        :name => "Name",
        :type_id => 1,
        :sub_type_id => 1
      )
    ])
  end

  it "renders a list of menus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
