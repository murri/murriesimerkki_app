require 'spec_helper'

describe "moto_informations/show.html.erb" do
  before(:each) do
    @moto_information = assign(:moto_information, stub_model(MotoInformation,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
