require 'spec_helper'

describe "caravan_year_models/index.html.erb" do
  before(:each) do
    assign(:caravan_year_models, [
      stub_model(CaravanYearModel),
      stub_model(CaravanYearModel)
    ])
  end

  it "renders a list of caravan_year_models" do
    render
  end
end
