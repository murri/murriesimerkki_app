require 'spec_helper'

describe "car_types/edit.html.erb" do
  before(:each) do
    @car_type = assign(:car_type, stub_model(CarType,
      :name => "MyString"
    ))
  end

  it "renders the edit car_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_types_path(@car_type), :method => "post" do
      assert_select "input#car_type_name", :name => "car_type[name]"
    end
  end
end
