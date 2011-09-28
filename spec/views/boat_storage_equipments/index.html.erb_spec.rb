require 'spec_helper'

describe "boat_storage_equipments/index.html.erb" do
  before(:each) do
    assign(:boat_storage_equipments, [
      stub_model(BoatStorageEquipment,
        :name => "Name"
      ),
      stub_model(BoatStorageEquipment,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_storage_equipments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
