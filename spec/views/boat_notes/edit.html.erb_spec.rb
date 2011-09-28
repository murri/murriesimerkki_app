require 'spec_helper'

describe "boat_notes/edit.html.erb" do
  before(:each) do
    @boat_note = assign(:boat_note, stub_model(BoatNote,
      :name => "MyText"
    ))
  end

  it "renders the edit boat_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_notes_path(@boat_note), :method => "post" do
      assert_select "textarea#boat_note_name", :name => "boat_note[name]"
    end
  end
end
