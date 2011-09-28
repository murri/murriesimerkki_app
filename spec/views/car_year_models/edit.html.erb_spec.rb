require 'spec_helper'

describe "car_year_models/edit.html.erb" do
  before(:each) do
    @car_year_model = assign(:car_year_model, stub_model(CarYearModel))
  end

  it "renders the edit car_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_year_models_path(@car_year_model), :method => "post" do
    end
  end
end
