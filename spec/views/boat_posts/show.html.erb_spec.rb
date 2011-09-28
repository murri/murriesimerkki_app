require 'spec_helper'

describe "boat_posts/show.html.erb" do
  before(:each) do
    @boat_post = assign(:boat_post, stub_model(BoatPost,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Cover Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Cover Image Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Asking Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
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
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Total Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat Storage Equipment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat User Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat User Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boat User Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
