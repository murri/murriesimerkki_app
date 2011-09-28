require 'spec_helper'

describe "year_models/show.html.erb" do
  before(:each) do
    @year_model = assign(:year_model, stub_model(YearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
