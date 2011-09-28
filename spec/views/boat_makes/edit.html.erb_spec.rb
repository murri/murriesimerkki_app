require 'spec_helper'

describe "boat_makes/edit.html.erb" do
  before(:each) do
    @boat_make = assign(:boat_make, stub_model(BoatMake,
      :name => "MyString",
      :boat_type_id => 1
    ))
  end

  it "renders the edit boat_make form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_makes_path(@boat_make), :method => "post" do
      assert_select "input#boat_make_name", :name => "boat_make[name]"
      assert_select "input#boat_make_boat_type_id", :name => "boat_make[boat_type_id]"
    end
  end
end
