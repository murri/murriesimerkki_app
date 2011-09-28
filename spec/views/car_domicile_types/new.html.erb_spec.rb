require 'spec_helper'

describe "car_domicile_types/new.html.erb" do
  before(:each) do
    assign(:car_domicile_type, stub_model(CarDomicileType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_domicile_types_path, :method => "post" do
      assert_select "input#car_domicile_type_name", :name => "car_domicile_type[name]"
    end
  end
end
