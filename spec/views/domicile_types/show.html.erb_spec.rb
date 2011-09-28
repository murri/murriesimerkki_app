require 'spec_helper'

describe "domicile_types/show.html.erb" do
  before(:each) do
    @domicile_type = assign(:domicile_type, stub_model(DomicileType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
