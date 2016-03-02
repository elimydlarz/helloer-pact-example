require 'rest-client'

class NamerClient
  def self.name
    RestClient.get 'http://localhost:4567'
  end
end