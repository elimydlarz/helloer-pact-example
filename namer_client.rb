require 'rest-client'

class NamerClient
  def self.name
    RestClient.get ENV.fetch('NAMER_URL')
  end
end