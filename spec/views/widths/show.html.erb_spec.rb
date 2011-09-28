require 'spec_helper'

describe "widths/show.html.erb" do
  before(:each) do
    @width = assign(:width, stub_model(Width,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
