require 'spec_helper'

describe "machine_informations/edit.html.erb" do
  before(:each) do
    @machine_information = assign(:machine_information, stub_model(MachineInformation,
      :name => "MyText"
    ))
  end

  it "renders the edit machine_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_informations_path(@machine_information), :method => "post" do
      assert_select "textarea#machine_information_name", :name => "machine_information[name]"
    end
  end
end
