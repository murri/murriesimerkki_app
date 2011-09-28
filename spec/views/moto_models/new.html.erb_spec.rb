require 'spec_helper'

describe "moto_models/new.html.erb" do
  before(:each) do
    assign(:moto_model, stub_model(MotoModel,
      :name => "MyString",
      :moto_make_id => 1
    ).as_new_record)
  end

  it "renders new moto_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_models_path, :method => "post" do
      assert_select "input#moto_model_name", :name => "moto_model[name]"
      assert_select "input#moto_model_moto_make_id", :name => "moto_model[moto_make_id]"
    end
  end
end
