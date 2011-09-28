require 'spec_helper'

describe "boat_year_models/new.html.erb" do
  before(:each) do
    assign(:boat_year_model, stub_model(BoatYearModel).as_new_record)
  end

  it "renders new boat_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_year_models_path, :method => "post" do
    end
  end
end
