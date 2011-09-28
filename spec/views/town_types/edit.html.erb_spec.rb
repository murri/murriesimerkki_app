require 'spec_helper'

describe "town_types/edit.html.erb" do
  before(:each) do
    @town_type = assign(:town_type, stub_model(TownType,
      :name => "MyString",
      :domicile_type_id => 1
    ))
  end

  it "renders the edit town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => town_types_path(@town_type), :method => "post" do
      assert_select "input#town_type_name", :name => "town_type[name]"
      assert_select "input#town_type_domicile_type_id", :name => "town_type[domicile_type_id]"
    end
  end
end
