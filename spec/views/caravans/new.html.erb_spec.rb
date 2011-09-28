require 'spec_helper'

describe "caravans/new.html.erb" do
  before(:each) do
    assign(:caravan, stub_model(Caravan,
      :industry_id => 1,
      :focusing_section_id => 1
    ).as_new_record)
  end

  it "renders new caravan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravans_path, :method => "post" do
      assert_select "input#caravan_industry_id", :name => "caravan[industry_id]"
      assert_select "input#caravan_focusing_section_id", :name => "caravan[focusing_section_id]"
    end
  end
end
