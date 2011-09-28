require 'spec_helper'

describe "machine_models/edit.html.erb" do
  before(:each) do
    @machine_model = assign(:machine_model, stub_model(MachineModel,
      :name => "MyString"
    ))
  end

  it "renders the edit machine_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_models_path(@machine_model), :method => "post" do
      assert_select "input#machine_model_name", :name => "machine_model[name]"
    end
  end
end
