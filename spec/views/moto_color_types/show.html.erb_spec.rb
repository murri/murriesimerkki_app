require 'spec_helper'

describe "moto_color_types/show.html.erb" do
  before(:each) do
    @moto_color_type = assign(:moto_color_type, stub_model(MotoColorType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
