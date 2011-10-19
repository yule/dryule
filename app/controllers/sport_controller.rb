class SportController < ApplicationController
  def index
    week = Game.maximum(:week)
    @games = Game.find_all_by_week(week).sort{|x,y| x.home <=> y.home}
    @bets = Bet.find_all_by_week(week)
  end

end
