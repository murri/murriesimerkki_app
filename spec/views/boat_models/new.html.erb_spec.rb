require 'spec_helper'

describe "boat_models/new.html.erb" do
  before(:each) do
    assign(:boat_model, stub_model(BoatModel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_models_path, :method => "post" do
      assert_select "input#boat_model_name", :name => "boat_model[name]"
    end
  end
end
