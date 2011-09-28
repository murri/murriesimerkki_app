require 'spec_helper'

describe "car_year_models/show.html.erb" do
  before(:each) do
    @car_year_model = assign(:car_year_model, stub_model(CarYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
