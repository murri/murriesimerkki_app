require 'spec_helper'

describe "boat_weights/new.html.erb" do
  before(:each) do
    assign(:boat_weight, stub_model(BoatWeight,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_weights_path, :method => "post" do
      assert_select "input#boat_weight_name", :name => "boat_weight[name]"
    end
  end
end
