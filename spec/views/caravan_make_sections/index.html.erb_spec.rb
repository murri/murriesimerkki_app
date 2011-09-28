require 'spec_helper'

describe "caravan_make_sections/index.html.erb" do
  before(:each) do
    assign(:caravan_make_sections, [
      stub_model(CaravanMakeSection,
        :name => "Name",
        :caravan_type_id => 1
      ),
      stub_model(CaravanMakeSection,
        :name => "Name",
        :caravan_type_id => 1
      )
    ])
  end

  it "renders a list of caravan_make_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
