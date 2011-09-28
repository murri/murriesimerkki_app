require 'spec_helper'

describe "ilmoitus/edit.html.erb" do
  before(:each) do
    @ilmoitu = assign(:ilmoitu, stub_model(Ilmoitu,
      :type => "MyString",
      :make => "MyString",
      :model => "MyString",
      :subtype => "MyString",
      :yearmodel => "",
      :color => "MyString",
      :colortype => "MyString",
      :price => "9.99",
      :registernumber => "MyString",
      :information => "MyText",
      :mileage => "",
      :enginesize => "9.99",
      :drivetype => "MyString",
      :fuel => "MyString",
      :transmission => "MyString",
      :power => "9.99",
      :emission => "",
      :topspeed => "",
      :acceleration => "9.99",
      :consumption => "9.99",
      :weight => "9.99",
      :domicile => "MyString",
      :town => "MyString"
    ))
  end

  it "renders the edit ilmoitu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ilmoitus_path(@ilmoitu), :method => "post" do
      assert_select "input#ilmoitu_type", :name => "ilmoitu[type]"
      assert_select "input#ilmoitu_make", :name => "ilmoitu[make]"
      assert_select "input#ilmoitu_model", :name => "ilmoitu[model]"
      assert_select "input#ilmoitu_subtype", :name => "ilmoitu[subtype]"
      assert_select "input#ilmoitu_yearmodel", :name => "ilmoitu[yearmodel]"
      assert_select "input#ilmoitu_color", :name => "ilmoitu[color]"
      assert_select "input#ilmoitu_colortype", :name => "ilmoitu[colortype]"
      assert_select "input#ilmoitu_price", :name => "ilmoitu[price]"
      assert_select "input#ilmoitu_registernumber", :name => "ilmoitu[registernumber]"
      assert_select "textarea#ilmoitu_information", :name => "ilmoitu[information]"
      assert_select "input#ilmoitu_mileage", :name => "ilmoitu[mileage]"
      assert_select "input#ilmoitu_enginesize", :name => "ilmoitu[enginesize]"
      assert_select "input#ilmoitu_drivetype", :name => "ilmoitu[drivetype]"
      assert_select "input#ilmoitu_fuel", :name => "ilmoitu[fuel]"
      assert_select "input#ilmoitu_transmission", :name => "ilmoitu[transmission]"
      assert_select "input#ilmoitu_power", :name => "ilmoitu[power]"
      assert_select "input#ilmoitu_emission", :name => "ilmoitu[emission]"
      assert_select "input#ilmoitu_topspeed", :name => "ilmoitu[topspeed]"
      assert_select "input#ilmoitu_acceleration", :name => "ilmoitu[acceleration]"
      assert_select "input#ilmoitu_consumption", :name => "ilmoitu[consumption]"
      assert_select "input#ilmoitu_weight", :name => "ilmoitu[weight]"
      assert_select "input#ilmoitu_domicile", :name => "ilmoitu[domicile]"
      assert_select "input#ilmoitu_town", :name => "ilmoitu[town]"
    end
  end
end
