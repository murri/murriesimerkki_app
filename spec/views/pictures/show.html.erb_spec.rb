require 'spec_helper'

describe "pictures/show.html.erb" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture))
  end

  it "renders attributes in <p>" do
    render
  end
end
