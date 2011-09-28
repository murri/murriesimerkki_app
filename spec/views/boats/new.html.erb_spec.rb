require 'spec_helper'

describe "boats/new.html.erb" do
  before(:each) do
    assign(:boat, stub_model(Boat,
      :name => "MyString",
      :boat_type_id => 1,
      :boat_subtype_section_id => 1,
      :boat_make_section_id => 1,
      :boat_model_section_id => 1,
      :boat_asking_price => "MyString",
      :boat_body_material => "MyString",
      :boat_color => "MyString",
      :boat_length => "MyString",
      :boat_height => "MyString",
      :boat_width => "MyString",
      :boat_weight => "MyString",
      :boat_draught => "MyString",
      :boat_engine_make => "",
      :boat_engine_year_model => "MyString",
      :boat_engine_fuel_type_id => 1,
      :boat_note => "MyText",
      :boat_total_owner => "MyString",
      :boat_storage_equipment => "MyString",
      :boat_town_type_id => 1,
      :boat_domicile_type_section_id => 1
    ).as_new_record)
  end

  it "renders new boat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boats_path, :method => "post" do
      assert_select "input#boat_name", :name => "boat[name]"
      assert_select "input#boat_boat_type_id", :name => "boat[boat_type_id]"
      assert_select "input#boat_boat_subtype_section_id", :name => "boat[boat_subtype_section_id]"
      assert_select "input#boat_boat_make_section_id", :name => "boat[boat_make_section_id]"
      assert_select "input#boat_boat_model_section_id", :name => "boat[boat_model_section_id]"
      assert_select "input#boat_boat_asking_price", :name => "boat[boat_asking_price]"
      assert_select "input#boat_boat_body_material", :name => "boat[boat_body_material]"
      assert_select "input#boat_boat_color", :name => "boat[boat_color]"
      assert_select "input#boat_boat_length", :name => "boat[boat_length]"
      assert_select "input#boat_boat_height", :name => "boat[boat_height]"
      assert_select "input#boat_boat_width", :name => "boat[boat_width]"
      assert_select "input#boat_boat_weight", :name => "boat[boat_weight]"
      assert_select "input#boat_boat_draught", :name => "boat[boat_draught]"
      assert_select "input#boat_boat_engine_make", :name => "boat[boat_engine_make]"
      assert_select "input#boat_boat_engine_year_model", :name => "boat[boat_engine_year_model]"
      assert_select "input#boat_boat_engine_fuel_type_id", :name => "boat[boat_engine_fuel_type_id]"
      assert_select "textarea#boat_boat_note", :name => "boat[boat_note]"
      assert_select "input#boat_boat_total_owner", :name => "boat[boat_total_owner]"
      assert_select "input#boat_boat_storage_equipment", :name => "boat[boat_storage_equipment]"
      assert_select "input#boat_boat_town_type_id", :name => "boat[boat_town_type_id]"
      assert_select "input#boat_boat_domicile_type_section_id", :name => "boat[boat_domicile_type_section_id]"
    end
  end
end
