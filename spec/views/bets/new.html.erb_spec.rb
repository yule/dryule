require 'spec_helper'

describe "bets/new.html.erb" do
  before(:each) do
    assign(:bet, stub_model(Bet,
      :notes => "MyString",
      :is_correct => false
    ).as_new_record)
  end

  it "renders new bet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => bets_path, :method => "post" do
      assert_select "input#bet_notes", :name => "bet[notes]"
      assert_select "input#bet_is_correct", :name => "bet[is_correct]"
    end
  end
end
