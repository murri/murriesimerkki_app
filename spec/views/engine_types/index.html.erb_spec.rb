require 'spec_helper'

describe "engine_types/index.html.erb" do
  before(:each) do
    assign(:engine_types, [
      stub_model(EngineType,
        :name => "Name"
      ),
      stub_model(EngineType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of engine_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
