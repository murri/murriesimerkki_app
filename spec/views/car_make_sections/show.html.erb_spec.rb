require 'spec_helper'

describe "car_make_sections/show.html.erb" do
  before(:each) do
    @car_make_section = assign(:car_make_section, stub_model(CarMakeSection,
      :name => "Name",
      :car_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
