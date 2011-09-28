require 'spec_helper'

describe "boat_year_models/index.html.erb" do
  before(:each) do
    assign(:boat_year_models, [
      stub_model(BoatYearModel),
      stub_model(BoatYearModel)
    ])
  end

  it "renders a list of boat_year_models" do
    render
  end
end
