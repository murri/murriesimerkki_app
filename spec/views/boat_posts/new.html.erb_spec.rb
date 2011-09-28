require 'spec_helper'

describe "boat_posts/new.html.erb" do
  before(:each) do
    assign(:boat_post, stub_model(BoatPost,
      :boat_type_id => 1,
      :boat_make_id => 1,
      :boat_sub_type_id => 1,
      :boat_cover_image_uid => "MyString",
      :boat_cover_image_name => "MyString",
      :boat_model => "MyString",
      :boat_asking_price => "MyString",
      :boat_body_material_id => 1,
      :boat_color_id => 1,
      :boat_length => "MyString",
      :boat_height => "MyString",
      :boat_width => "MyString",
      :boat_weight => "MyString",
      :boat_draught => "MyString",
      :boat_engine_make_id => 1,
      :boat_engine_fuel_type_id => 1,
      :boat_note => "MyText",
      :boat_total_owner => "MyString",
      :boat_storage_equipment => "MyString",
      :boat_user_name => "MyString",
      :boat_user_phone => "MyString",
      :boat_user_email => "MyString",
      :boat_domicile_type_id => 1,
      :boat_town_type_id => 1
    ).as_new_record)
  end

  it "renders new boat_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_posts_path, :method => "post" do
      assert_select "input#boat_post_boat_type_id", :name => "boat_post[boat_type_id]"
      assert_select "input#boat_post_boat_make_id", :name => "boat_post[boat_make_id]"
      assert_select "input#boat_post_boat_sub_type_id", :name => "boat_post[boat_sub_type_id]"
      assert_select "input#boat_post_boat_cover_image_uid", :name => "boat_post[boat_cover_image_uid]"
      assert_select "input#boat_post_boat_cover_image_name", :name => "boat_post[boat_cover_image_name]"
      assert_select "input#boat_post_boat_model", :name => "boat_post[boat_model]"
      assert_select "input#boat_post_boat_asking_price", :name => "boat_post[boat_asking_price]"
      assert_select "input#boat_post_boat_body_material_id", :name => "boat_post[boat_body_material_id]"
      assert_select "input#boat_post_boat_color_id", :name => "boat_post[boat_color_id]"
      assert_select "input#boat_post_boat_length", :name => "boat_post[boat_length]"
      assert_select "input#boat_post_boat_height", :name => "boat_post[boat_height]"
      assert_select "input#boat_post_boat_width", :name => "boat_post[boat_width]"
      assert_select "input#boat_post_boat_weight", :name => "boat_post[boat_weight]"
      assert_select "input#boat_post_boat_draught", :name => "boat_post[boat_draught]"
      assert_select "input#boat_post_boat_engine_make_id", :name => "boat_post[boat_engine_make_id]"
      assert_select "input#boat_post_boat_engine_fuel_type_id", :name => "boat_post[boat_engine_fuel_type_id]"
      assert_select "textarea#boat_post_boat_note", :name => "boat_post[boat_note]"
      assert_select "input#boat_post_boat_total_owner", :name => "boat_post[boat_total_owner]"
      assert_select "input#boat_post_boat_storage_equipment", :name => "boat_post[boat_storage_equipment]"
      assert_select "input#boat_post_boat_user_name", :name => "boat_post[boat_user_name]"
      assert_select "input#boat_post_boat_user_phone", :name => "boat_post[boat_user_phone]"
      assert_select "input#boat_post_boat_user_email", :name => "boat_post[boat_user_email]"
      assert_select "input#boat_post_boat_domicile_type_id", :name => "boat_post[boat_domicile_type_id]"
      assert_select "input#boat_post_boat_town_type_id", :name => "boat_post[boat_town_type_id]"
    end
  end
end
