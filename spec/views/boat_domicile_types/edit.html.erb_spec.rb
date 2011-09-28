require 'spec_helper'

describe "boat_domicile_types/edit.html.erb" do
  before(:each) do
    @boat_domicile_type = assign(:boat_domicile_type, stub_model(BoatDomicileType,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_domicile_types_path(@boat_domicile_type), :method => "post" do
      assert_select "input#boat_domicile_type_name", :name => "boat_domicile_type[name]"
    end
  end
end
