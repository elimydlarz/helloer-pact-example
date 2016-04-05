require 'spec_helper'

describe 'Helloer'  do
  describe 'landing page' do
    before do
      response_from_namer = { name: 'world' }.to_json
      allow(RestClient).to receive(:get).with(ENV.fetch('NAMER_URL')).and_return(response_from_namer)

      get '/'
    end

    it 'says hello' do
      expect(last_response.body).to eq 'Hello world!'
    end
  end
end
