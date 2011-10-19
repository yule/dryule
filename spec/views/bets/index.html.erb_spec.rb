require 'spec_helper'

describe "bets/index.html.erb" do
  before(:each) do
    assign(:bets, [
      stub_model(Bet,
        :notes => "Notes",
        :is_correct => false
      ),
      stub_model(Bet,
        :notes => "Notes",
        :is_correct => false
      )
    ])
  end

  it "renders a list of bets" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
