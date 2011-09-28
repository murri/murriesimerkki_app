require 'spec_helper'

describe "boat_engine_year_models/show.html.erb" do
  before(:each) do
    @boat_engine_year_model = assign(:boat_engine_year_model, stub_model(BoatEngineYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
