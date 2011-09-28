require 'spec_helper'

describe "moto_informations/index.html.erb" do
  before(:each) do
    assign(:moto_informations, [
      stub_model(MotoInformation,
        :name => "MyText"
      ),
      stub_model(MotoInformation,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of moto_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
