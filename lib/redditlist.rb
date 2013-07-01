require "ruby_reddit_api"

class RedditList < Array
  def initialize subreddit
    r = Reddit::Api.new "user", "password"
    results = r.browse subreddit 
    self.replace results
  end
end
