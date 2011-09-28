require 'spec_helper'

describe "year_models/new.html.erb" do
  before(:each) do
    assign(:year_model, stub_model(YearModel).as_new_record)
  end

  it "renders new year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => year_models_path, :method => "post" do
    end
  end
end
