require 'spec_helper'

describe "storage_equipments/new.html.erb" do
  before(:each) do
    assign(:storage_equipment, stub_model(StorageEquipment,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new storage_equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => storage_equipments_path, :method => "post" do
      assert_select "input#storage_equipment_name", :name => "storage_equipment[name]"
    end
  end
end
