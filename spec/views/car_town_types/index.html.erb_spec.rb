require 'spec_helper'

describe "car_town_types/index.html.erb" do
  before(:each) do
    assign(:car_town_types, [
      stub_model(CarTownType,
        :name => "Name",
        :car_domicile_type_id => 1
      ),
      stub_model(CarTownType,
        :name => "Name",
        :car_domicile_type_id => 1
      )
    ])
  end

  it "renders a list of car_town_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
