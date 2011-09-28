require 'spec_helper'

describe "boat_weights/edit.html.erb" do
  before(:each) do
    @boat_weight = assign(:boat_weight, stub_model(BoatWeight,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_weights_path(@boat_weight), :method => "post" do
      assert_select "input#boat_weight_name", :name => "boat_weight[name]"
    end
  end
end
