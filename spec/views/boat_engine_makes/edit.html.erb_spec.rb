require 'spec_helper'

describe "boat_engine_makes/edit.html.erb" do
  before(:each) do
    @boat_engine_make = assign(:boat_engine_make, stub_model(BoatEngineMake,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_engine_make form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_engine_makes_path(@boat_engine_make), :method => "post" do
      assert_select "input#boat_engine_make_name", :name => "boat_engine_make[name]"
    end
  end
end
