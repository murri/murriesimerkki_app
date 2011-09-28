require 'spec_helper'

describe "machine_posts/index.html.erb" do
  before(:each) do
    assign(:machine_posts, [
      stub_model(MachinePost,
        :machine_type_id => 1,
        :machine_category_section_id => 1,
        :machine_make_section_id => 1,
        :machine_model => "Machine Model",
        :machine_cover_image_uid => "Machine Cover Image Uid",
        :machine_cover_image_name => "Machine Cover Image Name",
        :machine_engine_model => "Machine Engine Model",
        :machine_price => "Machine Price",
        :machine_gross_weight => "Machine Gross Weight",
        :machine_engine_size_id => "Machine Engine Size",
        :machine_mileage => "Machine Mileage",
        :machine_color_id => "Machine Color",
        :machine_color_type_id => "Machine Color Type",
        :machine_fuel_type_id => "Machine Fuel Type",
        :machine_drive_type_id => "Machine Drive Type",
        :machine_information => "MyText",
        :machine_total_owner => "Machine Total Owner",
        :machine_user_name => "Machine User Name",
        :machine_user_phone => "Machine User Phone",
        :machine_user_email => "Machine User Email",
        :machine_domicile_type_id => 1,
        :machine_town_type_id => 1
      ),
      stub_model(MachinePost,
        :machine_type_id => 1,
        :machine_category_section_id => 1,
        :machine_make_section_id => 1,
        :machine_model => "Machine Model",
        :machine_cover_image_uid => "Machine Cover Image Uid",
        :machine_cover_image_name => "Machine Cover Image Name",
        :machine_engine_model => "Machine Engine Model",
        :machine_price => "Machine Price",
        :machine_gross_weight => "Machine Gross Weight",
        :machine_engine_size_id => "Machine Engine Size",
        :machine_mileage => "Machine Mileage",
        :machine_color_id => "Machine Color",
        :machine_color_type_id => "Machine Color Type",
        :machine_fuel_type_id => "Machine Fuel Type",
        :machine_drive_type_id => "Machine Drive Type",
        :machine_information => "MyText",
        :machine_total_owner => "Machine Total Owner",
        :machine_user_name => "Machine User Name",
        :machine_user_phone => "Machine User Phone",
        :machine_user_email => "Machine User Email",
        :machine_domicile_type_id => 1,
        :machine_town_type_id => 1
      )
    ])
  end

  it "renders a list of machine_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Cover Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Cover Image Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Engine Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Gross Weight".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Engine Size".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Mileage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Color Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Fuel Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Drive Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine Total Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine User Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine User Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
