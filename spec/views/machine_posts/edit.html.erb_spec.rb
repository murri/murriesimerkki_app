require 'spec_helper'

describe "machine_posts/edit.html.erb" do
  before(:each) do
    @machine_post = assign(:machine_post, stub_model(MachinePost,
      :machine_type_id => 1,
      :machine_category_section_id => 1,
      :machine_make_section_id => 1,
      :machine_model => "MyString",
      :machine_cover_image_uid => "MyString",
      :machine_cover_image_name => "MyString",
      :machine_engine_model => "MyString",
      :machine_price => "MyString",
      :machine_gross_weight => "MyString",
      :machine_engine_size_id => "MyString",
      :machine_mileage => "MyString",
      :machine_color_id => "MyString",
      :machine_color_type_id => "MyString",
      :machine_fuel_type_id => "MyString",
      :machine_drive_type_id => "MyString",
      :machine_information => "MyText",
      :machine_total_owner => "MyString",
      :machine_user_name => "MyString",
      :machine_user_phone => "MyString",
      :machine_user_email => "MyString",
      :machine_domicile_type_id => 1,
      :machine_town_type_id => 1
    ))
  end

  it "renders the edit machine_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_posts_path(@machine_post), :method => "post" do
      assert_select "input#machine_post_machine_type_id", :name => "machine_post[machine_type_id]"
      assert_select "input#machine_post_machine_category_section_id", :name => "machine_post[machine_category_section_id]"
      assert_select "input#machine_post_machine_make_section_id", :name => "machine_post[machine_make_section_id]"
      assert_select "input#machine_post_machine_model", :name => "machine_post[machine_model]"
      assert_select "input#machine_post_machine_cover_image_uid", :name => "machine_post[machine_cover_image_uid]"
      assert_select "input#machine_post_machine_cover_image_name", :name => "machine_post[machine_cover_image_name]"
      assert_select "input#machine_post_machine_engine_model", :name => "machine_post[machine_engine_model]"
      assert_select "input#machine_post_machine_price", :name => "machine_post[machine_price]"
      assert_select "input#machine_post_machine_gross_weight", :name => "machine_post[machine_gross_weight]"
      assert_select "input#machine_post_machine_engine_size_id", :name => "machine_post[machine_engine_size_id]"
      assert_select "input#machine_post_machine_mileage", :name => "machine_post[machine_mileage]"
      assert_select "input#machine_post_machine_color_id", :name => "machine_post[machine_color_id]"
      assert_select "input#machine_post_machine_color_type_id", :name => "machine_post[machine_color_type_id]"
      assert_select "input#machine_post_machine_fuel_type_id", :name => "machine_post[machine_fuel_type_id]"
      assert_select "input#machine_post_machine_drive_type_id", :name => "machine_post[machine_drive_type_id]"
      assert_select "textarea#machine_post_machine_information", :name => "machine_post[machine_information]"
      assert_select "input#machine_post_machine_total_owner", :name => "machine_post[machine_total_owner]"
      assert_select "input#machine_post_machine_user_name", :name => "machine_post[machine_user_name]"
      assert_select "input#machine_post_machine_user_phone", :name => "machine_post[machine_user_phone]"
      assert_select "input#machine_post_machine_user_email", :name => "machine_post[machine_user_email]"
      assert_select "input#machine_post_machine_domicile_type_id", :name => "machine_post[machine_domicile_type_id]"
      assert_select "input#machine_post_machine_town_type_id", :name => "machine_post[machine_town_type_id]"
    end
  end
end
