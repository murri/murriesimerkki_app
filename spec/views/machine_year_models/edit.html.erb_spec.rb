require 'spec_helper'

describe "machine_year_models/edit.html.erb" do
  before(:each) do
    @machine_year_model = assign(:machine_year_model, stub_model(MachineYearModel))
  end

  it "renders the edit machine_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_year_models_path(@machine_year_model), :method => "post" do
    end
  end
end
