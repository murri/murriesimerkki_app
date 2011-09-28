require 'spec_helper'

describe "car_sub_types/edit.html.erb" do
  before(:each) do
    @car_sub_type = assign(:car_sub_type, stub_model(CarSubType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_sub_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_sub_types_path(@car_sub_type), :method => "post" do
      assert_select "input#car_sub_type_name", :name => "car_sub_type[name]"
    end
  end
end
