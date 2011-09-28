require 'spec_helper'

describe "moto_models/index.html.erb" do
  before(:each) do
    assign(:moto_models, [
      stub_model(MotoModel,
        :name => "Name",
        :moto_make_id => 1
      ),
      stub_model(MotoModel,
        :name => "Name",
        :moto_make_id => 1
      )
    ])
  end

  it "renders a list of moto_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
