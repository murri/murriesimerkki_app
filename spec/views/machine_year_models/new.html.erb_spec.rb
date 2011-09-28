require 'spec_helper'

describe "machine_year_models/new.html.erb" do
  before(:each) do
    assign(:machine_year_model, stub_model(MachineYearModel).as_new_record)
  end

  it "renders new machine_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_year_models_path, :method => "post" do
    end
  end
end
