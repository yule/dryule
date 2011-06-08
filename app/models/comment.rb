class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :beverage
  validates :score, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }, :presence=>true  
end
