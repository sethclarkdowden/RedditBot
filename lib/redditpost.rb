require 'nokogiri' 
require 'open-uri'
require 'lib/karmaresult'

class RedditPost
  attr_accessor :post, :repost, :is_repost, :top_comment
  def initialize post
    @post = post
    is_repost?
    puts @is_repost
    puts @repost.url
    if @is_repost 
    	top_commet_is
	end
  end

  def is_repost?
  	url='http://karmadecay.com/' + @post.url
  	puts @post.url
  	puts url
  	if !@post.is_self
  		karmaresults = []
  		page = Nokogiri::HTML(open(url))   
  		results = page.css(".result")  	
  		results.each do |res|
  			no = res.css(".no")[0].text
  			title = res.css(".title a").text
  			url = res.css(".title a")[0]['href']
  			votes = res.css(".votes .no").text.to_i
  			comments = res.css(".comments .no").text.to_i
  			unless no.empty?
  				karmaresults << KarmaResult.new(title, url, votes, comments)
			end
  		end
  		karmaresults.sort!{|a, b| b.votes <=> a.votes}
  		if karmaresults[0].votes > 500 && karmaresults[0].comments > 50
  			@is_repost = true
  			@repost = karmaresults[0]  		
  			puts @repost.url
  		end  	
  	end
  end

  def top_commet_is
  	page = Nokogiri::HTML(open(@repost.url))
  	@top_comment = page.css('.entry .md')[0].css('p').text
  end

end
