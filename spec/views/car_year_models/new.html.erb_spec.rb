require 'spec_helper'

describe "car_year_models/new.html.erb" do
  before(:each) do
    assign(:car_year_model, stub_model(CarYearModel).as_new_record)
  end

  it "renders new car_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_year_models_path, :method => "post" do
    end
  end
end
