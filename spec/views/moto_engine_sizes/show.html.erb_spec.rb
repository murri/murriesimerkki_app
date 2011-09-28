require 'spec_helper'

describe "moto_engine_sizes/show.html.erb" do
  before(:each) do
    @moto_engine_size = assign(:moto_engine_size, stub_model(MotoEngineSize,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
