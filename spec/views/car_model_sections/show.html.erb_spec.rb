require 'spec_helper'

describe "car_model_sections/show.html.erb" do
  before(:each) do
    @car_model_section = assign(:car_model_section, stub_model(CarModelSection,
      :name => "Name",
      :car_make_id => 1
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
