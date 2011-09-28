require 'spec_helper'

describe "moto_gearbox_types/show.html.erb" do
  before(:each) do
    @moto_gearbox_type = assign(:moto_gearbox_type, stub_model(MotoGearboxType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
