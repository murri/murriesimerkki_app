require 'spec_helper'

describe "boat_draughts/edit.html.erb" do
  before(:each) do
    @boat_draught = assign(:boat_draught, stub_model(BoatDraught,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_draught form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_draughts_path(@boat_draught), :method => "post" do
      assert_select "input#boat_draught_name", :name => "boat_draught[name]"
    end
  end
end
