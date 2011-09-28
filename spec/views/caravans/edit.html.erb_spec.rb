require 'spec_helper'

describe "caravans/edit.html.erb" do
  before(:each) do
    @caravan = assign(:caravan, stub_model(Caravan,
      :industry_id => 1,
      :focusing_section_id => 1
    ))
  end

  it "renders the edit caravan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravans_path(@caravan), :method => "post" do
      assert_select "input#caravan_industry_id", :name => "caravan[industry_id]"
      assert_select "input#caravan_focusing_section_id", :name => "caravan[focusing_section_id]"
    end
  end
end
