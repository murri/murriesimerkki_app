require 'spec_helper'

describe "boat_town_types/new.html.erb" do
  before(:each) do
    assign(:boat_town_type, stub_model(BoatTownType,
      :name => "MyString",
      :boat_domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new boat_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_town_types_path, :method => "post" do
      assert_select "input#boat_town_type_name", :name => "boat_town_type[name]"
      assert_select "input#boat_town_type_boat_domicile_type_id", :name => "boat_town_type[boat_domicile_type_id]"
    end
  end
end
