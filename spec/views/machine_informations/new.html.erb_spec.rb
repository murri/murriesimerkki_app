require 'spec_helper'

describe "machine_informations/new.html.erb" do
  before(:each) do
    assign(:machine_information, stub_model(MachineInformation,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new machine_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_informations_path, :method => "post" do
      assert_select "textarea#machine_information_name", :name => "machine_information[name]"
    end
  end
end
