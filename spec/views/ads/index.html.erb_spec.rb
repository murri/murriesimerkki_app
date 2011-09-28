require 'spec_helper'

describe "ads/index.html.erb" do
  before(:each) do
    assign(:ads, [
      stub_model(Ad,
        :type => "Type",
        :make => "Make",
        :model => "Model",
        :subtype => "Subtype",
        :color => "Color",
        :colortype => "Colortype",
        :price => "9.99",
        :registernumber => "Registernumber",
        :information => "MyText",
        :mileage => "Mileage",
        :enginesize => "9.99",
        :drivetype => "Drivetype",
        :fuel => "Fuel",
        :transmission => "Transmission",
        :power => "9.99",
        :emission => "Emission",
        :topspeed => "Topspeed",
        :acceleration => "9.99",
        :consumption => "9.99",
        :weight => "9.99",
        :domicile => "Domicile",
        :town => "Town"
      ),
      stub_model(Ad,
        :type => "Type",
        :make => "Make",
        :model => "Model",
        :subtype => "Subtype",
        :color => "Color",
        :colortype => "Colortype",
        :price => "9.99",
        :registernumber => "Registernumber",
        :information => "MyText",
        :mileage => "Mileage",
        :enginesize => "9.99",
        :drivetype => "Drivetype",
        :fuel => "Fuel",
        :transmission => "Transmission",
        :power => "9.99",
        :emission => "Emission",
        :topspeed => "Topspeed",
        :acceleration => "9.99",
        :consumption => "9.99",
        :weight => "9.99",
        :domicile => "Domicile",
        :town => "Town"
      )
    ])
  end

  it "renders a list of ads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subtype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Colortype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Registernumber".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mileage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Drivetype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fuel".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transmission".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Emission".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Topspeed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Domicile".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Town".to_s, :count => 2
  end
end
