require 'spec_helper'

describe "boat_year_models/edit.html.erb" do
  before(:each) do
    @boat_year_model = assign(:boat_year_model, stub_model(BoatYearModel))
  end

  it "renders the edit boat_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_year_models_path(@boat_year_model), :method => "post" do
    end
  end
end
