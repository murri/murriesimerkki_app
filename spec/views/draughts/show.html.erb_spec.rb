require 'spec_helper'

describe "draughts/show.html.erb" do
  before(:each) do
    @draught = assign(:draught, stub_model(Draught,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
