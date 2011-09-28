require 'spec_helper'

describe "town_types/new.html.erb" do
  before(:each) do
    assign(:town_type, stub_model(TownType,
      :name => "MyString",
      :domicile_type_id => 1
    ).as_new_record)
  end

  it "renders new town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => town_types_path, :method => "post" do
      assert_select "input#town_type_name", :name => "town_type[name]"
      assert_select "input#town_type_domicile_type_id", :name => "town_type[domicile_type_id]"
    end
  end
end
