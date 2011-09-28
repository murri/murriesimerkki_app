require 'spec_helper'

describe "caravan_dead_weights/edit.html.erb" do
  before(:each) do
    @caravan_dead_weight = assign(:caravan_dead_weight, stub_model(CaravanDeadWeight,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_dead_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_dead_weights_path(@caravan_dead_weight), :method => "post" do
      assert_select "input#caravan_dead_weight_name", :name => "caravan_dead_weight[name]"
    end
  end
end
