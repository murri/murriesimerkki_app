require 'spec_helper'

describe "car_informations/edit.html.erb" do
  before(:each) do
    @car_information = assign(:car_information, stub_model(CarInformation,
      :name => "MyText"
    ))
  end

  it "renders the edit car_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_informations_path(@car_information), :method => "post" do
      assert_select "textarea#car_information_name", :name => "car_information[name]"
    end
  end
end
