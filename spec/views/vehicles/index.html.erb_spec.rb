require 'spec_helper'

describe "vehicles/index.html.erb" do
  before(:each) do
    assign(:vehicles, [
      stub_model(Vehicle,
        :name => "Name"
      ),
      stub_model(Vehicle,
        :name => "Name"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
