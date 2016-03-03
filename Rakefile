require 'pact_broker/client/tasks'

PactBroker::Client::PublicationTask.new do | task |
  require 'dotenv'
  Dotenv.load

  require_relative 'version'
  task.consumer_version = VERSION
  task.pact_broker_base_url = ENV['PACT_URL']
end