require 'spec_helper'

describe "machine_make_sections/index.html.erb" do
  before(:each) do
    assign(:machine_make_sections, [
      stub_model(MachineMakeSection,
        :name => "Name"
      ),
      stub_model(MachineMakeSection,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_make_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
