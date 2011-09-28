require 'spec_helper'

describe "boats/show.html.erb" do
  before(:each) do
    @boat = assign(:boat, stub_model(Boat,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Asking Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Body Material/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Length/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Height/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Width/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Weight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Draught/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Engine Year Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Total Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Storage Equipment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
