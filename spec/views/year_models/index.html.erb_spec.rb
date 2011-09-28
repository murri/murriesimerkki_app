require 'spec_helper'

describe "year_models/index.html.erb" do
  before(:each) do
    assign(:year_models, [
      stub_model(YearModel),
      stub_model(YearModel)
    ])
  end

  it "renders a list of year_models" do
    render
  end
end
