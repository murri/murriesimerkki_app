require 'spec_helper'

describe "boats/index.html.erb" do
  before(:each) do
    assign(:boats, [
      stub_model(Boat,
        :name => "Name",
        :boat_type_id => 1,
        :boat_subtype_section_id => 1,
        :boat_make_section_id => 1,
        :boat_model_section_id => 1,
        :boat_asking_price => "Boat Asking Price",
        :boat_body_material => "Boat Body Material",
        :boat_color => "Boat Color",
        :boat_length => "Boat Length",
        :boat_height => "Boat Height",
        :boat_width => "Boat Width",
        :boat_weight => "Boat Weight",
        :boat_draught => "Boat Draught",
        :boat_engine_make => "",
        :boat_engine_year_model => "Boat Engine Year Model",
        :boat_engine_fuel_type_id => 1,
        :boat_note => "MyText",
        :boat_total_owner => "Boat Total Owner",
        :boat_storage_equipment => "Boat Storage Equipment",
        :boat_town_type_id => 1,
        :boat_domicile_type_section_id => 1
      ),
      stub_model(Boat,
        :name => "Name",
        :boat_type_id => 1,
        :boat_subtype_section_id => 1,
        :boat_make_section_id => 1,
        :boat_model_section_id => 1,
        :boat_asking_price => "Boat Asking Price",
        :boat_body_material => "Boat Body Material",
        :boat_color => "Boat Color",
        :boat_length => "Boat Length",
        :boat_height => "Boat Height",
        :boat_width => "Boat Width",
        :boat_weight => "Boat Weight",
        :boat_draught => "Boat Draught",
        :boat_engine_make => "",
        :boat_engine_year_model => "Boat Engine Year Model",
        :boat_engine_fuel_type_id => 1,
        :boat_note => "MyText",
        :boat_total_owner => "Boat Total Owner",
        :boat_storage_equipment => "Boat Storage Equipment",
        :boat_town_type_id => 1,
        :boat_domicile_type_section_id => 1
      )
    ])
  end

  it "renders a list of boats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Asking Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Body Material".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Length".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Height".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Width".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Weight".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Draught".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Engine Year Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Total Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Storage Equipment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
