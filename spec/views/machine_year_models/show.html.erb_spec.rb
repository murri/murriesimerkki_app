require 'spec_helper'

describe "machine_year_models/show.html.erb" do
  before(:each) do
    @machine_year_model = assign(:machine_year_model, stub_model(MachineYearModel))
  end

  it "renders attributes in <p>" do
    render
  end
end
