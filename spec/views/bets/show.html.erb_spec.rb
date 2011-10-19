require 'spec_helper'

describe "bets/show.html.erb" do
  before(:each) do
    @bet = assign(:bet, stub_model(Bet,
      :notes => "Notes",
      :is_correct => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Notes/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
