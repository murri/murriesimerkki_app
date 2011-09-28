require 'spec_helper'

describe "car_weights/edit.html.erb" do
  before(:each) do
    @car_weight = assign(:car_weight, stub_model(CarWeight,
      :name => "MyString"
    ))
  end

  it "renders the edit car_weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_weights_path(@car_weight), :method => "post" do
      assert_select "input#car_weight_name", :name => "car_weight[name]"
    end
  end
end
