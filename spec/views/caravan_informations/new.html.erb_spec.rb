require 'spec_helper'

describe "caravan_informations/new.html.erb" do
  before(:each) do
    assign(:caravan_information, stub_model(CaravanInformation,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new caravan_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_informations_path, :method => "post" do
      assert_select "textarea#caravan_information_name", :name => "caravan_information[name]"
    end
  end
end
