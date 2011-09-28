require 'spec_helper'

describe "moto_posts/show.html.erb" do
  before(:each) do
    @moto_post = assign(:moto_post, stub_model(MotoPost,
      :vehicle_id => 1,
      :sub_vehicle_id => 1,
      :moto_make_id => 1,
      :moto_model_id => 1,
      :moto_cover_image_uid => "Moto Cover Image Uid",
      :moto_cover_image_name => "Moto Cover Image Name",
      :moto_registration_number => "Moto Registration Number",
      :moto_price => "Moto Price",
      :moto_color_id => "Moto Color",
      :moto_color_type_id => "Moto Color Type",
      :moto_engine_type_id => "Moto Engine Type",
      :moto_engine_size_id => "Moto Engine Size",
      :moto_information => "MyText",
      :moto_mileage => "Moto Mileage",
      :moto_drive_type_id => "Moto Drive Type",
      :moto_user_name => "Moto User Name",
      :moto_user_phone => "Moto User Phone",
      :moto_user_email => "Moto User Email",
      :moto_domicile_type_id => 1,
      :moto_town_type_id => 1
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
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Cover Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Cover Image Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Registration Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Color Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Engine Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Engine Size/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Mileage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto Drive Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto User Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto User Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Moto User Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
