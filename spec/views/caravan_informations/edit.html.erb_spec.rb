require 'spec_helper'

describe "caravan_informations/edit.html.erb" do
  before(:each) do
    @caravan_information = assign(:caravan_information, stub_model(CaravanInformation,
      :name => "MyText"
    ))
  end

  it "renders the edit caravan_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_informations_path(@caravan_information), :method => "post" do
      assert_select "textarea#caravan_information_name", :name => "caravan_information[name]"
    end
  end
end
