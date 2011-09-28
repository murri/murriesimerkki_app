require 'spec_helper'

describe "moto_informations/new.html.erb" do
  before(:each) do
    assign(:moto_information, stub_model(MotoInformation,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new moto_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_informations_path, :method => "post" do
      assert_select "textarea#moto_information_name", :name => "moto_information[name]"
    end
  end
end
