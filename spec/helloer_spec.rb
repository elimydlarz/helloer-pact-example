require 'spec_helper'

describe 'Helloer'  do
  describe 'landing page' do
    subject { get '/' }

    before { allow(RestClient).to receive(:get).with('http://localhost:4567').and_return('world') }

    its(:status) { is_expected.to eq 200 }
    its(:body) { is_expected.to eq 'Hello world!' }
  end
end
