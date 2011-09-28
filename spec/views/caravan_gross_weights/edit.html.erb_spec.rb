require 'spec_helper'

describe "caravan_gross_weights/edit.html.erb" do
  before(:each) do
    @caravan_gross_weight = assign(:caravan_gross_weight, stub_model(CaravanGrossWeight,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_gross_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_gross_weights_path(@caravan_gross_weight), :method => "post" do
      assert_select "input#caravan_gross_weight_name", :name => "caravan_gross_weight[name]"
    end
  end
end
