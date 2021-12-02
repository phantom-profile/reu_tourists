require 'rest-client'

module Cats
  class GetRandomCat
    CAT_API_TOKEN = ENV['CAT_API_TOKEN']

    def self.meow
      @response = RestClient.get 'https://api.thecatapi.com/v1/images/search', params: {api_key: CAT_API_TOKEN}
      @image = JSON.parse( @response.body)[0]['url']
    end
  end
end

