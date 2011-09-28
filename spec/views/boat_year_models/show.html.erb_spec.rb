require 'spec_helper'

describe "boat_year_models/show.html.erb" do
  before(:each) do
    @boat_year_model = assign(:boat_year_model, stub_model(BoatYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
