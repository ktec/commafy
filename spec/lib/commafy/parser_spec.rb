require 'rails_helper'

describe Commafy::Parser do
  it "is available as described_class" do
    expect(described_class).to eq(Parser)
  end

  context '1234567/3' do
    it 'returns 1,234,567' do
      result = described_class.parse(1234567, 3)

      expect(result).to eq('1,234,567')
    end
  end
end