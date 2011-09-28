require 'spec_helper'

describe "moto_town_types/edit.html.erb" do
  before(:each) do
    @moto_town_type = assign(:moto_town_type, stub_model(MotoTownType,
      :name => "MyString",
      :moto_domicile_type_id => 1
    ))
  end

  it "renders the edit moto_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_town_types_path(@moto_town_type), :method => "post" do
      assert_select "input#moto_town_type_name", :name => "moto_town_type[name]"
      assert_select "input#moto_town_type_moto_domicile_type_id", :name => "moto_town_type[moto_domicile_type_id]"
    end
  end
end
