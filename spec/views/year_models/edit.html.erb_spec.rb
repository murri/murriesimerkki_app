require 'spec_helper'

describe "year_models/edit.html.erb" do
  before(:each) do
    @year_model = assign(:year_model, stub_model(YearModel))
  end

  it "renders the edit year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => year_models_path(@year_model), :method => "post" do
    end
  end
end
