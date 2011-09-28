require 'spec_helper'

describe "car_domicile_types/show.html.erb" do
  before(:each) do
    @car_domicile_type = assign(:car_domicile_type, stub_model(CarDomicileType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
