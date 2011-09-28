require 'spec_helper'

describe "machine_drive_types/index.html.erb" do
  before(:each) do
    assign(:machine_drive_types, [
      stub_model(MachineDriveType,
        :name => "Name"
      ),
      stub_model(MachineDriveType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of machine_drive_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
