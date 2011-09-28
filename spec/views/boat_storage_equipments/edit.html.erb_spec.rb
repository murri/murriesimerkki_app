require 'spec_helper'

describe "boat_storage_equipments/edit.html.erb" do
  before(:each) do
    @boat_storage_equipment = assign(:boat_storage_equipment, stub_model(BoatStorageEquipment,
      :name => "MyString"
    ))
  end

  it "renders the edit boat_storage_equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_storage_equipments_path(@boat_storage_equipment), :method => "post" do
      assert_select "input#boat_storage_equipment_name", :name => "boat_storage_equipment[name]"
    end
  end
end
