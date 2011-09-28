require 'spec_helper'

describe "machine_posts/show.html.erb" do
  before(:each) do
    @machine_post = assign(:machine_post, stub_model(MachinePost,
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
    rendered.should match(/Machine Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Cover Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Cover Image Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Engine Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Gross Weight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Engine Size/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Mileage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Color Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Fuel Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Drive Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine Total Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine User Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine User Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine User Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
