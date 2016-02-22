require_relative 'pact_helper'
require_relative '../../namer_client'

describe NamerClient, pact: true do
  subject { NamerClient }

  before { ENV['NAME_PROVIDER_URL'] = 'localhost:1234' }

  describe 'name' do
    before do
      namer.given(
        'everything is fine'
      ).upon_receiving(
        'a request for a name'
      ).with(
        method: :get,
        path: '/'
      ).will_respond_with(
        status: 200,
        body: 'world'
      )
    end

    it 'returns world' do
      expect(subject.name).to eq 'world'
    end
  end
end