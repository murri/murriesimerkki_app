require 'spec_helper'

describe "drive_types/show.html.erb" do
  before(:each) do
    @drive_type = assign(:drive_type, stub_model(DriveType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
