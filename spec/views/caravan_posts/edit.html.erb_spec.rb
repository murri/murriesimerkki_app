require 'spec_helper'

describe "caravan_posts/edit.html.erb" do
  before(:each) do
    @caravan_post = assign(:caravan_post, stub_model(CaravanPost,
      :caravan_type_id => 1,
      :caravan_make_section_id => 1,
      :caravan_model_section_id => 1,
      :caravan_cover_image_uid => "MyString",
      :caravan_cover_image_name => "MyString",
      :caravan_asking_price => "MyString",
      :caravan_total_owner => "MyString",
      :caravan_length => "MyString",
      :caravan_dead_weight => "MyString",
      :caravan_gross_weigt => "MyString",
      :caravan_information => "MyText",
      :caravan_mileage => "MyString",
      :caravan_user_name => "MyString",
      :caravan_user_phone => "MyString",
      :caravan_user_email => "MyString",
      :caravan_domicile_type_id => 1,
      :caravan_town_type_id => 1
    ))
  end

  it "renders the edit caravan_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_posts_path(@caravan_post), :method => "post" do
      assert_select "input#caravan_post_caravan_type_id", :name => "caravan_post[caravan_type_id]"
      assert_select "input#caravan_post_caravan_make_section_id", :name => "caravan_post[caravan_make_section_id]"
      assert_select "input#caravan_post_caravan_model_section_id", :name => "caravan_post[caravan_model_section_id]"
      assert_select "input#caravan_post_caravan_cover_image_uid", :name => "caravan_post[caravan_cover_image_uid]"
      assert_select "input#caravan_post_caravan_cover_image_name", :name => "caravan_post[caravan_cover_image_name]"
      assert_select "input#caravan_post_caravan_asking_price", :name => "caravan_post[caravan_asking_price]"
      assert_select "input#caravan_post_caravan_total_owner", :name => "caravan_post[caravan_total_owner]"
      assert_select "input#caravan_post_caravan_length", :name => "caravan_post[caravan_length]"
      assert_select "input#caravan_post_caravan_dead_weight", :name => "caravan_post[caravan_dead_weight]"
      assert_select "input#caravan_post_caravan_gross_weigt", :name => "caravan_post[caravan_gross_weigt]"
      assert_select "textarea#caravan_post_caravan_information", :name => "caravan_post[caravan_information]"
      assert_select "input#caravan_post_caravan_mileage", :name => "caravan_post[caravan_mileage]"
      assert_select "input#caravan_post_caravan_user_name", :name => "caravan_post[caravan_user_name]"
      assert_select "input#caravan_post_caravan_user_phone", :name => "caravan_post[caravan_user_phone]"
      assert_select "input#caravan_post_caravan_user_email", :name => "caravan_post[caravan_user_email]"
      assert_select "input#caravan_post_caravan_domicile_type_id", :name => "caravan_post[caravan_domicile_type_id]"
      assert_select "input#caravan_post_caravan_town_type_id", :name => "caravan_post[caravan_town_type_id]"
    end
  end
end
