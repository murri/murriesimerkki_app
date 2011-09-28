require 'spec_helper'

describe "car_emissions/edit.html.erb" do
  before(:each) do
    @car_emission = assign(:car_emission, stub_model(CarEmission,
      :name => "MyString"
    ))
  end

  it "renders the edit car_emission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_emissions_path(@car_emission), :method => "post" do
      assert_select "input#car_emission_name", :name => "car_emission[name]"
    end
  end
end
