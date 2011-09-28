require 'spec_helper'

describe "car_town_types/show.html.erb" do
  before(:each) do
    @car_town_type = assign(:car_town_type, stub_model(CarTownType,
      :name => "Name",
      :car_domicile_type_id => 1
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
