require 'spec_helper'

describe "bets/edit.html.erb" do
  before(:each) do
    @bet = assign(:bet, stub_model(Bet,
      :new_record? => false,
      :notes => "MyString",
      :is_correct => false
    ))
  end

  it "renders the edit bet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => bet_path(@bet), :method => "post" do
      assert_select "input#bet_notes", :name => "bet[notes]"
      assert_select "input#bet_is_correct", :name => "bet[is_correct]"
    end
  end
end
