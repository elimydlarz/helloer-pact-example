require 'pact/consumer/rspec'

Pact.service_consumer 'Helloer' do
  has_pact_with 'Namer' do
    mock_service :namer do
      port 4567
    end
  end
end