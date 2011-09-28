require 'spec_helper'

describe "lengths/show.html.erb" do
  before(:each) do
    @length = assign(:length, stub_model(Length,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
