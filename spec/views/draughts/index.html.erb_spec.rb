require 'spec_helper'

describe "draughts/index.html.erb" do
  before(:each) do
    assign(:draughts, [
      stub_model(Draught,
        :name => "Name"
      ),
      stub_model(Draught,
        :name => "Name"
      )
    ])
  end

  it "renders a list of draughts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
