require 'spec_helper'

describe "caravan_year_models/new.html.erb" do
  before(:each) do
    assign(:caravan_year_model, stub_model(CaravanYearModel).as_new_record)
  end

  it "renders new caravan_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_year_models_path, :method => "post" do
    end
  end
end
