class Recipe
 include HTTParty

 ENV["FOOD2FORK_KEY"] = 'YOUR_API_KEY'

 key_value = ENV["FOOD2FORK_KEY"]

 hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"

 base_uri "http://#{hostport}/api"

 
 #base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json

 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end