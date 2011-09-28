require 'spec_helper'

describe "moto_colors/show.html.erb" do
  before(:each) do
    @moto_color = assign(:moto_color, stub_model(MotoColor,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
