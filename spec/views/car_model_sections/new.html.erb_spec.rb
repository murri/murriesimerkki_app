require 'spec_helper'

describe "car_model_sections/new.html.erb" do
  before(:each) do
    assign(:car_model_section, stub_model(CarModelSection,
      :name => "MyString",
      :car_make_id => 1
    ).as_new_record)
  end

  it "renders new car_model_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_model_sections_path, :method => "post" do
      assert_select "input#car_model_section_name", :name => "car_model_section[name]"
      assert_select "input#car_model_section_car_make_id", :name => "car_model_section[car_make_id]"
    end
  end
end
