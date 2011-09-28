require 'spec_helper'

describe "moto_domicile_types/edit.html.erb" do
  before(:each) do
    @moto_domicile_type = assign(:moto_domicile_type, stub_model(MotoDomicileType,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_domicile_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_domicile_types_path(@moto_domicile_type), :method => "post" do
      assert_select "input#moto_domicile_type_name", :name => "moto_domicile_type[name]"
    end
  end
end
