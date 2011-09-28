require 'spec_helper'

describe "boat_draughts/new.html.erb" do
  before(:each) do
    assign(:boat_draught, stub_model(BoatDraught,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_draught form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_draughts_path, :method => "post" do
      assert_select "input#boat_draught_name", :name => "boat_draught[name]"
    end
  end
end
