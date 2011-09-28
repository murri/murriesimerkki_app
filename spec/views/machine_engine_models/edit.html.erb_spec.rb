require 'spec_helper'

describe "machine_engine_models/edit.html.erb" do
  before(:each) do
    @machine_engine_model = assign(:machine_engine_model, stub_model(MachineEngineModel,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_engine_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_engine_models_path(@machine_engine_model), :method => "post" do
      assert_select "input#machine_engine_model_name", :name => "machine_engine_model[name]"
    end
  end
end
