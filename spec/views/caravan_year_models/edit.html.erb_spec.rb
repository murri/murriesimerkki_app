require 'spec_helper'

describe "caravan_year_models/edit.html.erb" do
  before(:each) do
    @caravan_year_model = assign(:caravan_year_model, stub_model(CaravanYearModel))
  end

  it "renders the edit caravan_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_year_models_path(@caravan_year_model), :method => "post" do
    end
  end
end
