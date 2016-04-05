require 'rest-client'

class NamerClient
  def self.name
    response = RestClient.get(ENV.fetch('NAMER_URL'))
    parsed_response = JSON.parse(response, symbolize_names: true)
    parsed_response[:name]
  end
end