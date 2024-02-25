class Country
	include HTTParty

	base_uri 'https://api.punkapi.com/v2'
	default_params fields: 'id,name,tagline,image_url,'

def self.all
	get('/beers')
end

def self.detail(id)
	get("/beers/#{id}")
end

end