require 'httparty'

class Brewerydb

  attr_reader :api_key

  def initialize(api_key)
    @api_key = api_key
  end

  def beers(options={})
    options.merge!({key: api_key})
    HTTParty.get("http://api.brewerydb.com/v2/beers", query: options)
  end
end
