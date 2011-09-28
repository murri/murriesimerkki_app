require 'spec_helper'

describe "boats_position_town_types/new.html.erb" do
  before(:each) do
    assign(:boats_position_town_type, stub_model(BoatsPositionTownType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boats_position_town_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boats_position_town_types_path, :method => "post" do
      assert_select "input#boats_position_town_type_name", :name => "boats_position_town_type[name]"
    end
  end
end
