require 'spec_helper'

describe "games/edit.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :new_record? => false,
      :week => "",
      :home => "MyString",
      :away => "MyString",
      :handicap => "",
      :home_result => "",
      :away_result => "",
      :pick => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => game_path(@game), :method => "post" do
      assert_select "input#game_week", :name => "game[week]"
      assert_select "input#game_home", :name => "game[home]"
      assert_select "input#game_away", :name => "game[away]"
      assert_select "input#game_handicap", :name => "game[handicap]"
      assert_select "input#game_home_result", :name => "game[home_result]"
      assert_select "input#game_away_result", :name => "game[away_result]"
      assert_select "input#game_pick", :name => "game[pick]"
      assert_select "textarea#game_notes", :name => "game[notes]"
    end
  end
end
