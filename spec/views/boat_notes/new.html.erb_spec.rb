require 'spec_helper'

describe "boat_notes/new.html.erb" do
  before(:each) do
    assign(:boat_note, stub_model(BoatNote,
      :name => "MyText"
    ).as_new_record)
  end

  it "renders new boat_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_notes_path, :method => "post" do
      assert_select "textarea#boat_note_name", :name => "boat_note[name]"
    end
  end
end
