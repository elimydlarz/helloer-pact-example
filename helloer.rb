require 'sinatra'
require_relative 'namer_client'

set :port, 3456

get '/' do
  "Hello #{NamerClient.name}!"
end