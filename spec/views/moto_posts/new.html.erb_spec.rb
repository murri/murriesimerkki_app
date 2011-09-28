require 'spec_helper'

describe "moto_posts/new.html.erb" do
  before(:each) do
    assign(:moto_post, stub_model(MotoPost,
      :vehicle_id => 1,
      :sub_vehicle_id => 1,
      :moto_make_id => 1,
      :moto_model_id => 1,
      :moto_cover_image_uid => "MyString",
      :moto_cover_image_name => "MyString",
      :moto_registration_number => "MyString",
      :moto_price => "MyString",
      :moto_color_id => "MyString",
      :moto_color_type_id => "MyString",
      :moto_engine_type_id => "MyString",
      :moto_engine_size_id => "MyString",
      :moto_information => "MyText",
      :moto_mileage => "MyString",
      :moto_drive_type_id => "MyString",
      :moto_user_name => "MyString",
      :moto_user_phone => "MyString",
      :moto_user_email => "MyString",
      :moto_domicile_type_id => 1,
      :moto_town_type_id => 1
    ).as_new_record)
  end

  it "renders new moto_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_posts_path, :method => "post" do
      assert_select "input#moto_post_vehicle_id", :name => "moto_post[vehicle_id]"
      assert_select "input#moto_post_sub_vehicle_id", :name => "moto_post[sub_vehicle_id]"
      assert_select "input#moto_post_moto_make_id", :name => "moto_post[moto_make_id]"
      assert_select "input#moto_post_moto_model_id", :name => "moto_post[moto_model_id]"
      assert_select "input#moto_post_moto_cover_image_uid", :name => "moto_post[moto_cover_image_uid]"
      assert_select "input#moto_post_moto_cover_image_name", :name => "moto_post[moto_cover_image_name]"
      assert_select "input#moto_post_moto_registration_number", :name => "moto_post[moto_registration_number]"
      assert_select "input#moto_post_moto_price", :name => "moto_post[moto_price]"
      assert_select "input#moto_post_moto_color_id", :name => "moto_post[moto_color_id]"
      assert_select "input#moto_post_moto_color_type_id", :name => "moto_post[moto_color_type_id]"
      assert_select "input#moto_post_moto_engine_type_id", :name => "moto_post[moto_engine_type_id]"
      assert_select "input#moto_post_moto_engine_size_id", :name => "moto_post[moto_engine_size_id]"
      assert_select "textarea#moto_post_moto_information", :name => "moto_post[moto_information]"
      assert_select "input#moto_post_moto_mileage", :name => "moto_post[moto_mileage]"
      assert_select "input#moto_post_moto_drive_type_id", :name => "moto_post[moto_drive_type_id]"
      assert_select "input#moto_post_moto_user_name", :name => "moto_post[moto_user_name]"
      assert_select "input#moto_post_moto_user_phone", :name => "moto_post[moto_user_phone]"
      assert_select "input#moto_post_moto_user_email", :name => "moto_post[moto_user_email]"
      assert_select "input#moto_post_moto_domicile_type_id", :name => "moto_post[moto_domicile_type_id]"
      assert_select "input#moto_post_moto_town_type_id", :name => "moto_post[moto_town_type_id]"
    end
  end
end
