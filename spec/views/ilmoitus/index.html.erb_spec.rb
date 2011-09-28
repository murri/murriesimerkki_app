require 'spec_helper'

describe "ilmoitus/index.html.erb" do
  before(:each) do
    assign(:ilmoitus, [
      stub_model(Ilmoitu,
        :type => "Type",
        :make => "Make",
        :model => "Model",
        :subtype => "Subtype",
        :yearmodel => "",
        :color => "Color",
        :colortype => "Colortype",
        :price => "9.99",
        :registernumber => "Registernumber",
        :information => "MyText",
        :mileage => "",
        :enginesize => "9.99",
        :drivetype => "Drivetype",
        :fuel => "Fuel",
        :transmission => "Transmission",
        :power => "9.99",
        :emission => "",
        :topspeed => "",
        :acceleration => "9.99",
        :consumption => "9.99",
        :weight => "9.99",
        :domicile => "Domicile",
        :town => "Town"
      ),
      stub_model(Ilmoitu,
        :type => "Type",
        :make => "Make",
        :model => "Model",
        :subtype => "Subtype",
        :yearmodel => "",
        :color => "Color",
        :colortype => "Colortype",
        :price => "9.99",
        :registernumber => "Registernumber",
        :information => "MyText",
        :mileage => "",
        :enginesize => "9.99",
        :drivetype => "Drivetype",
        :fuel => "Fuel",
        :transmission => "Transmission",
        :power => "9.99",
        :emission => "",
        :topspeed => "",
        :acceleration => "9.99",
        :consumption => "9.99",
        :weight => "9.99",
        :domicile => "Domicile",
        :town => "Town"
      )
    ])
  end

  it "renders a list of ilmoitus" do
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
    assert_select "tr>td", :text => "".to_s, :count => 2
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
    assert_select "tr>td", :text => "".to_s, :count => 2
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
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
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
