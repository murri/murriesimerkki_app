require 'spec_helper'

describe "car_sub_types/new.html.erb" do
  before(:each) do
    assign(:car_sub_type, stub_model(CarSubType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_sub_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_sub_types_path, :method => "post" do
      assert_select "input#car_sub_type_name", :name => "car_sub_type[name]"
    end
  end
end
