require 'spec_helper'

describe "boat_engine_makes/index.html.erb" do
  before(:each) do
    assign(:boat_engine_makes, [
      stub_model(BoatEngineMake,
        :name => "Name"
      ),
      stub_model(BoatEngineMake,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_engine_makes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
