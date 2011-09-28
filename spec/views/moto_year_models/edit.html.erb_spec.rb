require 'spec_helper'

describe "moto_year_models/edit.html.erb" do
  before(:each) do
    @moto_year_model = assign(:moto_year_model, stub_model(MotoYearModel))
  end

  it "renders the edit moto_year_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_year_models_path(@moto_year_model), :method => "post" do
    end
  end
end
