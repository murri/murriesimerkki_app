require 'spec_helper'

describe "moto_domicile_types/new.html.erb" do
  before(:each) do
    assign(:moto_domicile_type, stub_model(MotoDomicileType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new moto_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_domicile_types_path, :method => "post" do
      assert_select "input#moto_domicile_type_name", :name => "moto_domicile_type[name]"
    end
  end
end
