require 'spec_helper'

describe "engine_sizes/show.html.erb" do
  before(:each) do
    @engine_size = assign(:engine_size, stub_model(EngineSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
