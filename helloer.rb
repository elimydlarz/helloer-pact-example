require 'sinatra'
require_relative 'namer_client'

get '/' do
  "Hello #{NamerClient.name}!"
end