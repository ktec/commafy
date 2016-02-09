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

  context '12345678/4' do
    it 'returns 1,234,5678' do
      result = described_class.parse(12345678, 4)

      expect(result).to eq('1234,5678')
    end
  end

  context '123456.789/2' do
    it 'returns 12,34,56.789' do
      result = described_class.parse(123456.789, 2)

      expect(result).to eq('12,34,56.789')
    end
  end
end
