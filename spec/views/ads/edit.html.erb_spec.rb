require 'spec_helper'

describe "ads/edit.html.erb" do
  before(:each) do
    @ad = assign(:ad, stub_model(Ad,
      :type => "MyString",
      :make => "MyString",
      :model => "MyString",
      :subtype => "MyString",
      :color => "MyString",
      :colortype => "MyString",
      :price => "9.99",
      :registernumber => "MyString",
      :information => "MyText",
      :mileage => "MyString",
      :enginesize => "9.99",
      :drivetype => "MyString",
      :fuel => "MyString",
      :transmission => "MyString",
      :power => "9.99",
      :emission => "MyString",
      :topspeed => "MyString",
      :acceleration => "9.99",
      :consumption => "9.99",
      :weight => "9.99",
      :domicile => "MyString",
      :town => "MyString"
    ))
  end

  it "renders the edit ad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ads_path(@ad), :method => "post" do
      assert_select "input#ad_type", :name => "ad[type]"
      assert_select "input#ad_make", :name => "ad[make]"
      assert_select "input#ad_model", :name => "ad[model]"
      assert_select "input#ad_subtype", :name => "ad[subtype]"
      assert_select "input#ad_color", :name => "ad[color]"
      assert_select "input#ad_colortype", :name => "ad[colortype]"
      assert_select "input#ad_price", :name => "ad[price]"
      assert_select "input#ad_registernumber", :name => "ad[registernumber]"
      assert_select "textarea#ad_information", :name => "ad[information]"
      assert_select "input#ad_mileage", :name => "ad[mileage]"
      assert_select "input#ad_enginesize", :name => "ad[enginesize]"
      assert_select "input#ad_drivetype", :name => "ad[drivetype]"
      assert_select "input#ad_fuel", :name => "ad[fuel]"
      assert_select "input#ad_transmission", :name => "ad[transmission]"
      assert_select "input#ad_power", :name => "ad[power]"
      assert_select "input#ad_emission", :name => "ad[emission]"
      assert_select "input#ad_topspeed", :name => "ad[topspeed]"
      assert_select "input#ad_acceleration", :name => "ad[acceleration]"
      assert_select "input#ad_consumption", :name => "ad[consumption]"
      assert_select "input#ad_weight", :name => "ad[weight]"
      assert_select "input#ad_domicile", :name => "ad[domicile]"
      assert_select "input#ad_town", :name => "ad[town]"
    end
  end
end
