require 'spec_helper'

describe "car_town_types/edit.html.erb" do
  before(:each) do
    @car_town_type = assign(:car_town_type, stub_model(CarTownType,
      :name => "MyString",
      :car_domicile_type_id => 1
    ))
  end

  it "renders the edit car_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_town_types_path(@car_town_type), :method => "post" do
      assert_select "input#car_town_type_name", :name => "car_town_type[name]"
      assert_select "input#car_town_type_car_domicile_type_id", :name => "car_town_type[car_domicile_type_id]"
    end
  end
end
