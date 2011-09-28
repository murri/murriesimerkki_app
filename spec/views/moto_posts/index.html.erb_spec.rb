require 'spec_helper'

describe "moto_posts/index.html.erb" do
  before(:each) do
    assign(:moto_posts, [
      stub_model(MotoPost,
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
      ),
      stub_model(MotoPost,
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
      )
    ])
  end

  it "renders a list of moto_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Cover Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Cover Image Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Registration Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Color Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Engine Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Engine Size".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Mileage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto Drive Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto User Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Moto User Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
