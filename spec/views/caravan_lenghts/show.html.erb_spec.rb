require 'spec_helper'

describe "caravan_lenghts/show.html.erb" do
  before(:each) do
    @caravan_lenght = assign(:caravan_lenght, stub_model(CaravanLenght,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
