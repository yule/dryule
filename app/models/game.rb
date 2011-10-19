class Float
  def to_hcap 
    self<0? self.to_s : "+#{self.to_s}"
  end
end

class Game < ActiveRecord::Base
  
  TEAMS = ['ARZ','ATL','BAL','BUF','CAR','CHI','CIN','CLE','DAL','DEN','DET','GB','HOU','IND','JAX','KC','MIA','MIN','NE','NO','NYG','NYJ','OAK','PHI','PIT','SD','SF','SEA','STL','TB','TEN','WAS']


  def winner
    return nil unless home_result and away_result
    (away_result > (home_result + handicap)) ? 'away' : 'home' 
  end

  def correct? 
    winner == pick
  end
  
  def pick_handicap 
    pick == 'home' ? "#{home} (#{(handicap).to_hcap})" : "#{away} (#{(handicap*-1).to_hcap})"
  end

end
