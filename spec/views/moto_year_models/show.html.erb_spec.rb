require 'spec_helper'

describe "moto_year_models/show.html.erb" do
  before(:each) do
    @moto_year_model = assign(:moto_year_model, stub_model(MotoYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
