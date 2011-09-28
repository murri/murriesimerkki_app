require 'spec_helper'

describe "domicile_types/edit.html.erb" do
  before(:each) do
    @domicile_type = assign(:domicile_type, stub_model(DomicileType,
      :name => "MyString"
    ))
  end

  it "renders the edit domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domicile_types_path(@domicile_type), :method => "post" do
      assert_select "input#domicile_type_name", :name => "domicile_type[name]"
    end
  end
end
