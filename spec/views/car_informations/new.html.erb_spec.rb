require 'spec_helper'

describe "car_informations/new.html.erb" do
  before(:each) do
    assign(:car_information, stub_model(CarInformation,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new car_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_informations_path, :method => "post" do
      assert_select "textarea#car_information_name", :name => "car_information[name]"
    end
  end
end
