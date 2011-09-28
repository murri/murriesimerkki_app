require 'spec_helper'

describe "storage_equipments/index.html.erb" do
  before(:each) do
    assign(:storage_equipments, [
      stub_model(StorageEquipment,
        :name => "Name"
      ),
      stub_model(StorageEquipment,
        :name => "Name"
      )
    ])
  end

  it "renders a list of storage_equipments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
