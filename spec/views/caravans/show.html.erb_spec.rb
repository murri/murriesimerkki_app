require 'spec_helper'

describe "caravans/show.html.erb" do
  before(:each) do
    @caravan = assign(:caravan, stub_model(Caravan,
      :industry_id => 1,
      :focusing_section_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
