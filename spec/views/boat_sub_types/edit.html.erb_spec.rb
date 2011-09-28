require 'spec_helper'

describe "boat_sub_types/edit.html.erb" do
  before(:each) do
    @boat_sub_type = assign(:boat_sub_type, stub_model(BoatSubType,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_sub_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_sub_types_path(@boat_sub_type), :method => "post" do
      assert_select "input#boat_sub_type_name", :name => "boat_sub_type[name]"
    end
  end
end
