require 'sinatra_helper'

RSpec.describe App do
  describe 'GET /' do
    it 'returns http success' do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
