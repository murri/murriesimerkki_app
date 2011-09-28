require 'spec_helper'

describe "machine_informations/index.html.erb" do
  before(:each) do
    assign(:machine_informations, [
      stub_model(MachineInformation,
        :name => "MyText"
      ),
      stub_model(MachineInformation,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of machine_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
