require 'spec_helper'

describe "moto_town_types/index.html.erb" do
  before(:each) do
    assign(:moto_town_types, [
      stub_model(MotoTownType,
        :name => "Name",
        :moto_domicile_type_id => 1
      ),
      stub_model(MotoTownType,
        :name => "Name",
        :moto_domicile_type_id => 1
      )
    ])
  end

  it "renders a list of moto_town_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
