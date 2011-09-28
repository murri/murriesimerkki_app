require 'spec_helper'

describe "boat_notes/index.html.erb" do
  before(:each) do
    assign(:boat_notes, [
      stub_model(BoatNote,
        :name => "MyText"
      ),
      stub_model(BoatNote,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of boat_notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
