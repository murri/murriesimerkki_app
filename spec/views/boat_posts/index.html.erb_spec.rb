require 'spec_helper'

describe "boat_posts/index.html.erb" do
  before(:each) do
    assign(:boat_posts, [
      stub_model(BoatPost,
        :boat_type_id => 1,
        :boat_make_id => 1,
        :boat_sub_type_id => 1,
        :boat_cover_image_uid => "Boat Cover Image Uid",
        :boat_cover_image_name => "Boat Cover Image Name",
        :boat_model => "Boat Model",
        :boat_asking_price => "Boat Asking Price",
        :boat_body_material_id => 1,
        :boat_color_id => 1,
        :boat_length => "Boat Length",
        :boat_height => "Boat Height",
        :boat_width => "Boat Width",
        :boat_weight => "Boat Weight",
        :boat_draught => "Boat Draught",
        :boat_engine_make_id => 1,
        :boat_engine_fuel_type_id => 1,
        :boat_note => "MyText",
        :boat_total_owner => "Boat Total Owner",
        :boat_storage_equipment => "Boat Storage Equipment",
        :boat_user_name => "Boat User Name",
        :boat_user_phone => "Boat User Phone",
        :boat_user_email => "Boat User Email",
        :boat_domicile_type_id => 1,
        :boat_town_type_id => 1
      ),
      stub_model(BoatPost,
        :boat_type_id => 1,
        :boat_make_id => 1,
        :boat_sub_type_id => 1,
        :boat_cover_image_uid => "Boat Cover Image Uid",
        :boat_cover_image_name => "Boat Cover Image Name",
        :boat_model => "Boat Model",
        :boat_asking_price => "Boat Asking Price",
        :boat_body_material_id => 1,
        :boat_color_id => 1,
        :boat_length => "Boat Length",
        :boat_height => "Boat Height",
        :boat_width => "Boat Width",
        :boat_weight => "Boat Weight",
        :boat_draught => "Boat Draught",
        :boat_engine_make_id => 1,
        :boat_engine_fuel_type_id => 1,
        :boat_note => "MyText",
        :boat_total_owner => "Boat Total Owner",
        :boat_storage_equipment => "Boat Storage Equipment",
        :boat_user_name => "Boat User Name",
        :boat_user_phone => "Boat User Phone",
        :boat_user_email => "Boat User Email",
        :boat_domicile_type_id => 1,
        :boat_town_type_id => 1
      )
    ])
  end

  it "renders a list of boat_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Cover Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Cover Image Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Asking Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
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
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Total Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat Storage Equipment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat User Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boat User Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
