require 'spec_helper'

describe "caravan_lenghts/edit.html.erb" do
  before(:each) do
    @caravan_lenght = assign(:caravan_lenght, stub_model(CaravanLenght,
      :name => "MyString"
    ))
  end

  it "renders the edit caravan_lenght form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => caravan_lenghts_path(@caravan_lenght), :method => "post" do
      assert_select "input#caravan_lenght_name", :name => "caravan_lenght[name]"
    end
  end
end
