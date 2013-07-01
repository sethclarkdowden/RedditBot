require 'nokogiri' 
require 'open-uri'

class Test 
def initialize
redditlist("all")
end
def redditlist subreddit
url = "http://www.reddit.com/r/#{subreddit}"
page = Nokogiri::HTML(open(url))
puts page
end 
end