require 'spec_helper'

describe "boat_models/edit.html.erb" do
  before(:each) do
    @boat_model = assign(:boat_model, stub_model(BoatModel,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_models_path(@boat_model), :method => "post" do
      assert_select "input#boat_model_name", :name => "boat_model[name]"
    end
  end
end
