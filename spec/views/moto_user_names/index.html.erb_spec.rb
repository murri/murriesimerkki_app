require 'spec_helper'

describe "moto_user_names/index.html.erb" do
  before(:each) do
    assign(:moto_user_names, [
      stub_model(MotoUserName,
        :name => "Name"
      ),
      stub_model(MotoUserName,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_user_names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
