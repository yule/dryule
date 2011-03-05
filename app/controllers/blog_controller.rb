class BlogController < ApplicationController
  require 'open-uri'
  require 'simple-rss'
  
  
  def index
    rss = SimpleRSS.parse open('http://dry-rails.blogspot.com/feeds/posts/default')
    @items = rss.items
  end

end
