require 'spec_helper'

describe "caravan_posts/show.html.erb" do
  before(:each) do
    @caravan_post = assign(:caravan_post, stub_model(CaravanPost,
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
    rendered.should match(/Caravan Cover Image Uid/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Cover Image Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Asking Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Total Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Length/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Dead Weight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Gross Weigt/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan Mileage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan User Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan User Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caravan User Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
