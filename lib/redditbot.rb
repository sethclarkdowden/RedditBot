require 'lib/redditlist'
require 'lib/redditpost'
require 'crack'
require 'open-uri'
require 'rest-client'

class RedditBot
  def initialize
    results = RedditList.new "funny"    
    results.each do |res|
    	sleep 5
    	rp = RedditPost.new res
    	puts rp.post.url
    	puts rp.top_comment
    	puts "-----"
    end
    
    r = Reddit::Api.new "user", "password"        
    #results = r.search rp.repost.title, :in => "funny", :sort => "top"
    #puts results.inspect
  end
end
