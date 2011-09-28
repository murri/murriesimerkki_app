require 'spec_helper'

describe "town_types/show.html.erb" do
  before(:each) do
    @town_type = assign(:town_type, stub_model(TownType,
      :name => "Name",
      :domicile_type_id => 1
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
