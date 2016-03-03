require 'pact_broker/client/tasks'
require 'dotenv'
require './version'

PactBroker::Client::PublicationTask.new do | task |
  Dotenv.load
  task.consumer_version = VERSION
  task.pact_broker_base_url = ENV.fetch 'PACT_URL'
end