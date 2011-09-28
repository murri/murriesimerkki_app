require 'spec_helper'

describe "moto_models/edit.html.erb" do
  before(:each) do
    @moto_model = assign(:moto_model, stub_model(MotoModel,
      :name => "MyString",
      :moto_make_id => 1
    ))
  end

  it "renders the edit moto_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_models_path(@moto_model), :method => "post" do
      assert_select "input#moto_model_name", :name => "moto_model[name]"
      assert_select "input#moto_model_moto_make_id", :name => "moto_model[moto_make_id]"
    end
  end
end
