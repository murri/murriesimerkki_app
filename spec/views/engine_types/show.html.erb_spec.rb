require 'spec_helper'

describe "engine_types/show.html.erb" do
  before(:each) do
    @engine_type = assign(:engine_type, stub_model(EngineType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
