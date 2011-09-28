require 'spec_helper'

describe "moto_year_models/index.html.erb" do
  before(:each) do
    assign(:moto_year_models, [
      stub_model(MotoYearModel),
      stub_model(MotoYearModel)
    ])
  end

  it "renders a list of moto_year_models" do
    render
  end
end
