require 'rails_helper'

module Commafy
  describe Commafy do
    it 'returns original and commafied json' do
      get '/commafy/1234567/3'

      expect(response.body).to eq({
        original: 1234567,
        commafied: '1,234,567'
      }.to_json)
    end

    it 'returns works with floating point' do
      get '/commafy/123456.789/2'

      expect(response.body).to eq({
        original: 123456.789,
        commafied: '12,34,56.789'
      }.to_json)
    end
  end
end
