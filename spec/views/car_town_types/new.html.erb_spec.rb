require 'spec_helper'

describe "car_town_types/new.html.erb" do
  before(:each) do
    assign(:car_town_type, stub_model(CarTownType,
      :name => "MyString",
      :car_domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new car_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_town_types_path, :method => "post" do
      assert_select "input#car_town_type_name", :name => "car_town_type[name]"
      assert_select "input#car_town_type_car_domicile_type_id", :name => "car_town_type[car_domicile_type_id]"
    end
  end
end
