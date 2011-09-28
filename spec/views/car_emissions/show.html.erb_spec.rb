require 'spec_helper'

describe "car_emissions/show.html.erb" do
  before(:each) do
    @car_emission = assign(:car_emission, stub_model(CarEmission,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
