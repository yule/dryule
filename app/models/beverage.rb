class Beverage < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  def is_new?
    created_at > 1.week.ago
  end  
  
end
