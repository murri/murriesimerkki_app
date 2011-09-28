require 'spec_helper'

describe "caravan_posts/index.html.erb" do
  before(:each) do
    assign(:caravan_posts, [
      stub_model(CaravanPost,
        :caravan_type_id => 1,
        :caravan_make_section_id => 1,
        :caravan_model_section_id => 1,
        :caravan_cover_image_uid => "Caravan Cover Image Uid",
        :caravan_cover_image_name => "Caravan Cover Image Name",
        :caravan_asking_price => "Caravan Asking Price",
        :caravan_total_owner => "Caravan Total Owner",
        :caravan_length => "Caravan Length",
        :caravan_dead_weight => "Caravan Dead Weight",
        :caravan_gross_weigt => "Caravan Gross Weigt",
        :caravan_information => "MyText",
        :caravan_mileage => "Caravan Mileage",
        :caravan_user_name => "Caravan User Name",
        :caravan_user_phone => "Caravan User Phone",
        :caravan_user_email => "Caravan User Email",
        :caravan_domicile_type_id => 1,
        :caravan_town_type_id => 1
      ),
      stub_model(CaravanPost,
        :caravan_type_id => 1,
        :caravan_make_section_id => 1,
        :caravan_model_section_id => 1,
        :caravan_cover_image_uid => "Caravan Cover Image Uid",
        :caravan_cover_image_name => "Caravan Cover Image Name",
        :caravan_asking_price => "Caravan Asking Price",
        :caravan_total_owner => "Caravan Total Owner",
        :caravan_length => "Caravan Length",
        :caravan_dead_weight => "Caravan Dead Weight",
        :caravan_gross_weigt => "Caravan Gross Weigt",
        :caravan_information => "MyText",
        :caravan_mileage => "Caravan Mileage",
        :caravan_user_name => "Caravan User Name",
        :caravan_user_phone => "Caravan User Phone",
        :caravan_user_email => "Caravan User Email",
        :caravan_domicile_type_id => 1,
        :caravan_town_type_id => 1
      )
    ])
  end

  it "renders a list of caravan_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Cover Image Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Cover Image Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Asking Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Total Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Length".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Dead Weight".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Gross Weigt".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan Mileage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan User Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan User Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caravan User Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
