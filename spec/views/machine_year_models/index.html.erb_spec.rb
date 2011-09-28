require 'spec_helper'

describe "machine_year_models/index.html.erb" do
  before(:each) do
    assign(:machine_year_models, [
      stub_model(MachineYearModel),
      stub_model(MachineYearModel)
    ])
  end

  it "renders a list of machine_year_models" do
    render
  end
end
