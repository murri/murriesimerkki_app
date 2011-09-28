require 'spec_helper'

describe "cover_image_uids/show.html.erb" do
  before(:each) do
    @cover_image_uid = assign(:cover_image_uid, stub_model(CoverImageUid,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
