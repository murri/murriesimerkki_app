require 'spec_helper'

describe "boat_town_type_sections/index.html.erb" do
  before(:each) do
    assign(:boat_town_type_sections, [
      stub_model(BoatTownTypeSection,
        :name => "Name",
        :boat_domicile_type_id => 1
      ),
      stub_model(BoatTownTypeSection,
        :name => "Name",
        :boat_domicile_type_id => 1
      )
    ])
  end

  it "renders a list of boat_town_type_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
