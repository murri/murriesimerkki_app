require 'spec_helper'

describe "car_posts/index.html.erb" do
  before(:each) do
    assign(:car_posts, [
      stub_model(CarPost,
        :car_type_id => 1,
        :car_make_section_id => 1,
        :car_model_section_id => 1,
        :car_cover_image_uid => "Car Cover Image Uid",
        :car_cover_image_name => "Car Cover Image Name",
        :car_sub_type_id => "Car Sub Type",
        :car_color_id => "Car Color",
        :car_color_type_id => "Car Color Type",
        :car_price => "Car Price",
        :car_information => "MyText",
        :car_total_owner => "Car Total Owner",
        :car_mileage => "Car Mileage",
        :car_engine_size_id => "Car Engine Size",
        :car_drive_type_id => "Car Drive Type",
        :car_fuel_type_id => "Car Fuel Type",
        :car_gearbox_type_id => "Car Gearbox Type",
        :car_power => "Car Power",
        :car_emission => "Car Emission",
        :car_top_speed => "Car Top Speed",
        :car_acceleration => "Car Acceleration",
        :car_weight => "Car Weight",
        :car_user_name => "Car User Name",
        :car_user_phone => "Car User Phone",
        :car_user_email => "Car User Email",
        :car_domicile_type_id => 1,
        :car_town_type_id => 1
      ),
      stub_model(CarPost,
        :car_type_id => 1,
        :car_make_section_id => 1,
        :car_model_section_id => 1,
        :car_cover_image_uid => "Car Cover Image Uid",
        :car_cover_image_name => "Car Cover Image Name",
        :car_sub_type_id => "Car Sub Type",
        :car_color_id => "Car Color",
        :car_color_type_id => "Car Color Type",
        :car_price => "Car Price",
        :car_information => "MyText",
        :car_total_owner => "Car Total Owner",
        :car_mileage => "Car Mileage",
        :car_engine_size_id => "Car Engine Size",
        :car_drive_type_id => "Car Drive Type",
        :car_fuel_type_id => "Car Fuel Type",
        :car_gearbox_type_id => "Car Gearbox Type",
        :car_power => "Car Power",
        :car_emission => "Car Emission",
        :car_top_speed => "Car Top Speed",
        :car_acceleration => "Car Acceleration",
        :car_weight => "Car Weight",
        :car_user_name => "Car User Name",
        :car_user_phone => "Car User Phone",
        :car_user_email => "Car User Email",
        :car_domicile_type_id => 1,
        :car_town_type_id => 1
      )
    ])
  end

  it "renders a list of car_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Cover Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Cover Image Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Sub Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Color Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Total Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Mileage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Engine Size".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Drive Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Fuel Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Gearbox Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Power".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Emission".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Top Speed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Acceleration".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Weight".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car User Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car User Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
