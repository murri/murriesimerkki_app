require 'spec_helper'

describe "car_make_sections/edit.html.erb" do
  before(:each) do
    @car_make_section = assign(:car_make_section, stub_model(CarMakeSection,
      :name => "MyString",
      :car_type_id => 1
    ))
  end

  it "renders the edit car_make_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_make_sections_path(@car_make_section), :method => "post" do
      assert_select "input#car_make_section_name", :name => "car_make_section[name]"
      assert_select "input#car_make_section_car_type_id", :name => "car_make_section[car_type_id]"
    end
  end
end
