require 'spec_helper'

describe "car_year_models/index.html.erb" do
  before(:each) do
    assign(:car_year_models, [
      stub_model(CarYearModel),
      stub_model(CarYearModel)
    ])
  end

  it "renders a list of car_year_models" do
    render
  end
end
