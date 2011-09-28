require 'spec_helper'

describe "caravan_domicile_types/edit.html.erb" do
  before(:each) do
    @caravan_domicile_type = assign(:caravan_domicile_type, stub_model(CaravanDomicileType,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_domicile_types_path(@caravan_domicile_type), :method => "post" do
      assert_select "input#caravan_domicile_type_name", :name => "caravan_domicile_type[name]"
    end
  end
end
