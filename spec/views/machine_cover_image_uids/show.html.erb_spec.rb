require 'spec_helper'

describe "machine_cover_image_uids/show.html.erb" do
  before(:each) do
    @machine_cover_image_uid = assign(:machine_cover_image_uid, stub_model(MachineCoverImageUid,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
