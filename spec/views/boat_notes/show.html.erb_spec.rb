require 'spec_helper'

describe "boat_notes/show.html.erb" do
  before(:each) do
    @boat_note = assign(:boat_note, stub_model(BoatNote,
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
