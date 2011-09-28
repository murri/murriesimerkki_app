require 'spec_helper'

describe "caravan_town_types/new.html.erb" do
  before(:each) do
    assign(:caravan_town_type, stub_model(CaravanTownType,
      :name => "MyString",
      :caravan_domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new caravan_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_town_types_path, :method => "post" do
      assert_select "input#caravan_town_type_name", :name => "caravan_town_type[name]"
      assert_select "input#caravan_town_type_caravan_domicile_type_id", :name => "caravan_town_type[caravan_domicile_type_id]"
    end
  end
end
