require 'spec_helper'

describe "boats_position_town_types/edit.html.erb" do
  before(:each) do
    @boats_position_town_type = assign(:boats_position_town_type, stub_model(BoatsPositionTownType,
      :name => "MyString"
    ))
  end

  it "renders the edit boats_position_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boats_position_town_types_path(@boats_position_town_type), :method => "post" do
      assert_select "input#boats_position_town_type_name", :name => "boats_position_town_type[name]"
    end
  end
end
