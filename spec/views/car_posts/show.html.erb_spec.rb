require 'spec_helper'

describe "car_posts/show.html.erb" do
  before(:each) do
    @car_post = assign(:car_post, stub_model(CarPost,
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
    rendered.should match(/Car Cover Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Cover Image Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Sub Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Color Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Total Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Mileage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Engine Size/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Drive Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Fuel Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Gearbox Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Power/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Emission/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Top Speed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Acceleration/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Weight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car User Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car User Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car User Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
