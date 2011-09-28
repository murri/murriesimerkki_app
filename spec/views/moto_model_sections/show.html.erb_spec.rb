require 'spec_helper'

describe "moto_model_sections/show.html.erb" do
  before(:each) do
    @moto_model_section = assign(:moto_model_section, stub_model(MotoModelSection,
      :name => "Name",
      :make_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
