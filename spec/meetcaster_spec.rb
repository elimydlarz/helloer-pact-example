require 'spec_helper'

describe 'MeetCaster'  do
  describe 'landing page' do
    subject { get '/' }

    its(:status) { is_expected.to eq 200 }
    its(:body) { is_expected.to eq 'Hello world!' }
  end
end
