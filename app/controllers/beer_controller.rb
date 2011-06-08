class BeerController < ApplicationController
  def index
    @beers = Beverage.find_all_by_category(:beer, :order=>'score desc')
  end

end
