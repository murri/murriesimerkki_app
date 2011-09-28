require 'spec_helper'

describe "car_posts/edit.html.erb" do
  before(:each) do
    @car_post = assign(:car_post, stub_model(CarPost,
      :car_type_id => 1,
      :car_make_section_id => 1,
      :car_model_section_id => 1,
      :car_cover_image_uid => "MyString",
      :car_cover_image_name => "MyString",
      :car_sub_type_id => "MyString",
      :car_color_id => "MyString",
      :car_color_type_id => "MyString",
      :car_price => "MyString",
      :car_information => "MyText",
      :car_total_owner => "MyString",
      :car_mileage => "MyString",
      :car_engine_size_id => "MyString",
      :car_drive_type_id => "MyString",
      :car_fuel_type_id => "MyString",
      :car_gearbox_type_id => "MyString",
      :car_power => "MyString",
      :car_emission => "MyString",
      :car_top_speed => "MyString",
      :car_acceleration => "MyString",
      :car_weight => "MyString",
      :car_user_name => "MyString",
      :car_user_phone => "MyString",
      :car_user_email => "MyString",
      :car_domicile_type_id => 1,
      :car_town_type_id => 1
    ))
  end

  it "renders the edit car_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_posts_path(@car_post), :method => "post" do
      assert_select "input#car_post_car_type_id", :name => "car_post[car_type_id]"
      assert_select "input#car_post_car_make_section_id", :name => "car_post[car_make_section_id]"
      assert_select "input#car_post_car_model_section_id", :name => "car_post[car_model_section_id]"
      assert_select "input#car_post_car_cover_image_uid", :name => "car_post[car_cover_image_uid]"
      assert_select "input#car_post_car_cover_image_name", :name => "car_post[car_cover_image_name]"
      assert_select "input#car_post_car_sub_type_id", :name => "car_post[car_sub_type_id]"
      assert_select "input#car_post_car_color_id", :name => "car_post[car_color_id]"
      assert_select "input#car_post_car_color_type_id", :name => "car_post[car_color_type_id]"
      assert_select "input#car_post_car_price", :name => "car_post[car_price]"
      assert_select "textarea#car_post_car_information", :name => "car_post[car_information]"
      assert_select "input#car_post_car_total_owner", :name => "car_post[car_total_owner]"
      assert_select "input#car_post_car_mileage", :name => "car_post[car_mileage]"
      assert_select "input#car_post_car_engine_size_id", :name => "car_post[car_engine_size_id]"
      assert_select "input#car_post_car_drive_type_id", :name => "car_post[car_drive_type_id]"
      assert_select "input#car_post_car_fuel_type_id", :name => "car_post[car_fuel_type_id]"
      assert_select "input#car_post_car_gearbox_type_id", :name => "car_post[car_gearbox_type_id]"
      assert_select "input#car_post_car_power", :name => "car_post[car_power]"
      assert_select "input#car_post_car_emission", :name => "car_post[car_emission]"
      assert_select "input#car_post_car_top_speed", :name => "car_post[car_top_speed]"
      assert_select "input#car_post_car_acceleration", :name => "car_post[car_acceleration]"
      assert_select "input#car_post_car_weight", :name => "car_post[car_weight]"
      assert_select "input#car_post_car_user_name", :name => "car_post[car_user_name]"
      assert_select "input#car_post_car_user_phone", :name => "car_post[car_user_phone]"
      assert_select "input#car_post_car_user_email", :name => "car_post[car_user_email]"
      assert_select "input#car_post_car_domicile_type_id", :name => "car_post[car_domicile_type_id]"
      assert_select "input#car_post_car_town_type_id", :name => "car_post[car_town_type_id]"
    end
  end
end
