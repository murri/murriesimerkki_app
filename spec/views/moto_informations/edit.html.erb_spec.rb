require 'spec_helper'

describe "moto_informations/edit.html.erb" do
  before(:each) do
    @moto_information = assign(:moto_information, stub_model(MotoInformation,
      :name => "MyText"
    ))
  end

  it "renders the edit moto_information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_informations_path(@moto_information), :method => "post" do
      assert_select "textarea#moto_information_name", :name => "moto_information[name]"
    end
  end
end
