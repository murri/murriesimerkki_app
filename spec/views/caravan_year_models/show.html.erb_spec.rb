require 'spec_helper'

describe "caravan_year_models/show.html.erb" do
  before(:each) do
    @caravan_year_model = assign(:caravan_year_model, stub_model(CaravanYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
