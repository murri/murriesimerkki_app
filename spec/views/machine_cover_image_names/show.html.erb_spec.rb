require 'spec_helper'

describe "machine_cover_image_names/show.html.erb" do
  before(:each) do
    @machine_cover_image_name = assign(:machine_cover_image_name, stub_model(MachineCoverImageName,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
