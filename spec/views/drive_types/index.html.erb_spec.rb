require 'spec_helper'

describe "drive_types/index.html.erb" do
  before(:each) do
    assign(:drive_types, [
      stub_model(DriveType,
        :name => "Name"
      ),
      stub_model(DriveType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of drive_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
