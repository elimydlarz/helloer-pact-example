require 'dotenv'
require 'sinatra'
require './namer_client'

Dotenv.load

set :port, 3456

get '/' do
  "Hello #{NamerClient.name}!"
end