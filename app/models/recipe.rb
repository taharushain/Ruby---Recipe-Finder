class Recipe
	include HTTParty
	ENV["F2F_KEY"] = "YOUR_API"
	base_uri = "http://food2fork.com/api"
	default_params key: ENV["F2F_KEY"]

	format :json

	def self.for term
		get("/search",query: {q:term})["recipes"]