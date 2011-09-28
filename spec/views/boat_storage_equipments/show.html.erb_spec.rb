require 'spec_helper'

describe "boat_storage_equipments/show.html.erb" do
  before(:each) do
    @boat_storage_equipment = assign(:boat_storage_equipment, stub_model(BoatStorageEquipment,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
