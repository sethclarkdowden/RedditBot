class KarmaResult
	attr_accessor :title, :url, :votes, :comments
	def initialize title, url, votes, comments
		@title = title
		@url = url
		@votes = votes
		@comments = comments
	end
end