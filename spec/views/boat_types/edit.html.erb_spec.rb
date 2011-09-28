require 'spec_helper'

describe "boat_types/edit.html.erb" do
  before(:each) do
    @boat_type = assign(:boat_type, stub_model(BoatType,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_types_path(@boat_type), :method => "post" do
      assert_select "input#boat_type_name", :name => "boat_type[name]"
    end
  end
end
