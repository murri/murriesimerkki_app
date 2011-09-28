require 'spec_helper'

describe "storage_equipments/edit.html.erb" do
  before(:each) do
    @storage_equipment = assign(:storage_equipment, stub_model(StorageEquipment,
      :name => "MyString"
    ))
  end

  it "renders the edit storage_equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => storage_equipments_path(@storage_equipment), :method => "post" do
      assert_select "input#storage_equipment_name", :name => "storage_equipment[name]"
    end
  end
end
