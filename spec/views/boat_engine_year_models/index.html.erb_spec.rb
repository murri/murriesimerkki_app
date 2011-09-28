require 'spec_helper'

describe "boat_engine_year_models/index.html.erb" do
  before(:each) do
    assign(:boat_engine_year_models, [
      stub_model(BoatEngineYearModel),
      stub_model(BoatEngineYearModel)
    ])
  end

  it "renders a list of boat_engine_year_models" do
    render
  end
end
