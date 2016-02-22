require 'rest-client'

class NamerClient
  def self.name
    RestClient.get(ENV['NAME_PROVIDER_URL'])
  end
end