require 'sinatra'
require 'rest-client'

get '/' do
  "Hello #{name}!"
end

def name
  RestClient.get(ENV['NAME_PROVIDER_URL'])
end