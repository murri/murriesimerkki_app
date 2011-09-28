require 'spec_helper'

describe "machine_informations/show.html.erb" do
  before(:each) do
    @machine_information = assign(:machine_information, stub_model(MachineInformation,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
