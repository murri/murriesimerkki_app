require 'spec_helper'

describe "domicile_types/new.html.erb" do
  before(:each) do
    assign(:domicile_type, stub_model(DomicileType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => domicile_types_path, :method => "post" do
      assert_select "input#domicile_type_name", :name => "domicile_type[name]"
    end
  end
end
