require 'spec_helper'

describe "caravan_dead_weights/new.html.erb" do
  before(:each) do
    assign(:caravan_dead_weight, stub_model(CaravanDeadWeight,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new caravan_dead_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_dead_weights_path, :method => "post" do
      assert_select "input#caravan_dead_weight_name", :name => "caravan_dead_weight[name]"
    end
  end
end
