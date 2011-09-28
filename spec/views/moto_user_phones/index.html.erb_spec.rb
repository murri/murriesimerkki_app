require 'spec_helper'

describe "moto_user_phones/index.html.erb" do
  before(:each) do
    assign(:moto_user_phones, [
      stub_model(MotoUserPhone,
        :name => "Name"
      ),
      stub_model(MotoUserPhone,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_user_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
