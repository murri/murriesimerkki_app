require 'spec_helper'

describe "boat_town_types/edit.html.erb" do
  before(:each) do
    @boat_town_type = assign(:boat_town_type, stub_model(BoatTownType,
      :name => "MyString",
      :boat_domicile_type_id => 1
    ))
  end

  it "renders the edit boat_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_town_types_path(@boat_town_type), :method => "post" do
      assert_select "input#boat_town_type_name", :name => "boat_town_type[name]"
      assert_select "input#boat_town_type_boat_domicile_type_id", :name => "boat_town_type[boat_domicile_type_id]"
    end
  end
end
