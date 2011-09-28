require 'spec_helper'

describe "moto_year_models/new.html.erb" do
  before(:each) do
    assign(:moto_year_model, stub_model(MotoYearModel).as_new_record)
  end

  it "renders new moto_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_year_models_path, :method => "post" do
    end
  end
end
