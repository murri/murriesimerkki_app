require 'spec_helper'

describe "caravan_town_types/edit.html.erb" do
  before(:each) do
    @caravan_town_type = assign(:caravan_town_type, stub_model(CaravanTownType,
      :name => "MyString",
      :caravan_domicile_type_id => 1
    ))
  end

  it "renders the edit caravan_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_town_types_path(@caravan_town_type), :method => "post" do
      assert_select "input#caravan_town_type_name", :name => "caravan_town_type[name]"
      assert_select "input#caravan_town_type_caravan_domicile_type_id", :name => "caravan_town_type[caravan_domicile_type_id]"
    end
  end
end
