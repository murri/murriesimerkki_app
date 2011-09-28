require 'spec_helper'

describe "storage_equipments/show.html.erb" do
  before(:each) do
    @storage_equipment = assign(:storage_equipment, stub_model(StorageEquipment,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
