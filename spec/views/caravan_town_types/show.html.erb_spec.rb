require 'spec_helper'

describe "caravan_town_types/show.html.erb" do
  before(:each) do
    @caravan_town_type = assign(:caravan_town_type, stub_model(CaravanTownType,
      :name => "Name",
      :caravan_domicile_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
